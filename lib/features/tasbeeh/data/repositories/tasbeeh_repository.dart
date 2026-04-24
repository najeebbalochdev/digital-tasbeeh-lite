import 'package:isar/isar.dart';
import '../models/tasbeeh.dart';
import '../../../../features/analytics/data/models/daily_log.dart';
import '../../../../core/extensions/datetime_ext.dart';
import '../../../../core/constants/app_constants.dart';

class TasbeehRepository {
  final Isar _isar;

  TasbeehRepository(this._isar);

  // ─── READ ────────────────────────────────────────────────

  /// Get all tasbeeh ordered by sortOrder
  Future<List<Tasbeeh>> getAllTasbeeh() async {
    return await _isar.tasbeehs.where().sortBySortOrder().findAll();
  }

  /// Get a single tasbeeh by id
  Future<Tasbeeh?> getTasbeehById(int id) async {
    return await _isar.tasbeehs.get(id);
  }

  /// Watch all tasbeeh — live updates
  Stream<List<Tasbeeh>> watchAllTasbeeh() {
    return _isar.tasbeehs
        .where()
        .sortBySortOrder()
        .watch(fireImmediately: true);
  }

  // ─── WRITE ───────────────────────────────────────────────

  /// Save a new or existing tasbeeh
  Future<int> saveTasbeeh(Tasbeeh tasbeeh) async {
    return await _isar.writeTxn(() async {
      return await _isar.tasbeehs.put(tasbeeh);
    });
  }

  /// Increment count + update daily log in one transaction
  Future<Tasbeeh?> incrementCount(int tasbeehId) async {
    return await _isar.writeTxn(() async {
      final tasbeeh = await _isar.tasbeehs.get(tasbeehId);
      if (tasbeeh == null) return null;

      tasbeeh.count += 1;
      tasbeeh.totalCount += 1;

      // Check if target reached
      final bool targetReached =
          tasbeeh.target > 0 && tasbeeh.count >= tasbeeh.target;

      if (targetReached) {
        tasbeeh.roundsCompleted += 1;
        tasbeeh.count = 0;
      }

      await _isar.tasbeehs.put(tasbeeh);

      // Update daily log
      await _upsertDailyLog(tasbeehId);

      return tasbeeh;
    });
  }

  /// Reset current session count to zero
  Future<void> resetCount(int tasbeehId) async {
    await _isar.writeTxn(() async {
      final tasbeeh = await _isar.tasbeehs.get(tasbeehId);
      if (tasbeeh == null) return;
      tasbeeh.count = 0;
      await _isar.tasbeehs.put(tasbeeh);
    });
  }

  /// Manually set count (for user edit after reinstall)
  Future<void> setCount(int tasbeehId, int newCount) async {
    await _isar.writeTxn(() async {
      final tasbeeh = await _isar.tasbeehs.get(tasbeehId);
      if (tasbeeh == null) return;
      tasbeeh.count = newCount.clamp(0, AppConstants.maxCount);
      tasbeeh.totalCount = newCount.clamp(0, AppConstants.maxCount);
      await _isar.tasbeehs.put(tasbeeh);
    });
  }

  /// Update target count
  Future<void> updateTarget(int tasbeehId, int newTarget) async {
    await _isar.writeTxn(() async {
      final tasbeeh = await _isar.tasbeehs.get(tasbeehId);
      if (tasbeeh == null) return;
      tasbeeh.target = newTarget.clamp(0, AppConstants.maxCount);
      await _isar.tasbeehs.put(tasbeeh);
    });
  }

  /// Delete a tasbeeh (only non-preset)
  Future<void> deleteTasbeeh(int tasbeehId) async {
    await _isar.writeTxn(() async {
      await _isar.tasbeehs.delete(tasbeehId);
      // Also delete all daily logs for this tasbeeh
      final logs =
          await _isar.dailyLogs.filter().tasbeehIdEqualTo(tasbeehId).findAll();
      for (final log in logs) {
        await _isar.dailyLogs.delete(log.id);
      }
    });
  }

  /// Update sort orders after drag-to-reorder
  Future<void> updateSortOrders(List<Tasbeeh> reorderedList) async {
    await _isar.writeTxn(() async {
      for (int i = 0; i < reorderedList.length; i++) {
        reorderedList[i].sortOrder = i;
        await _isar.tasbeehs.put(reorderedList[i]);
      }
    });
  }

  // ─── SEED ────────────────────────────────────────────────

  /// Seed preset tasbeeh on first launch
  Future<void> seedPresets() async {
    final existing = await _isar.tasbeehs.count();
    if (existing > 0) return; // Already seeded

    final presets = [
      Tasbeeh()
        ..name = AppConstants.subhanAllahName
        ..arabicText = AppConstants.subhanAllahArabic
        ..transliteration = 'Subhan Allah'
        ..target = AppConstants.namazTarget
        ..isPreset = true
        ..isNamazSet = true
        ..sortOrder = 0,
      Tasbeeh()
        ..name = AppConstants.alhamdulillahName
        ..arabicText = AppConstants.alhamdulillahArabic
        ..transliteration = 'Alhamdu Lillah'
        ..target = AppConstants.namazTarget
        ..isPreset = true
        ..isNamazSet = true
        ..sortOrder = 1,
      Tasbeeh()
        ..name = AppConstants.allahuAkbarName
        ..arabicText = AppConstants.allahuAkbarArabic
        ..transliteration = 'Allahu Akbar'
        ..target = AppConstants.namazTarget
        ..isPreset = true
        ..isNamazSet = true
        ..sortOrder = 2,
    ];

    await _isar.writeTxn(() async {
      for (final preset in presets) {
        await _isar.tasbeehs.put(preset);
      }
    });
  }

  // ─── ANALYTICS ───────────────────────────────────────────

  /// Get daily logs for last N days
  Future<List<DailyLog>> getLogsForLastDays(int days) async {
    final cutoff = DateTime.now().subtract(Duration(days: days)).dateOnly;
    return await _isar.dailyLogs
        .filter()
        .dateGreaterThan(cutoff)
        .sortByDate()
        .findAll();
  }

  /// Get daily logs for a specific tasbeeh
  Future<List<DailyLog>> getLogsForTasbeeh(int tasbeehId) async {
    return await _isar.dailyLogs
        .filter()
        .tasbeehIdEqualTo(tasbeehId)
        .sortByDateDesc()
        .findAll();
  }

  // ─── PRIVATE ─────────────────────────────────────────────

  Future<void> _upsertDailyLog(int tasbeehId) async {
    final today = DateTime.now().dateOnly;

    final existing = await _isar.dailyLogs
        .filter()
        .tasbeehIdEqualTo(tasbeehId)
        .dateEqualTo(today)
        .findFirst();

    if (existing != null) {
      existing.countForDay += 1;
      await _isar.dailyLogs.put(existing);
    } else {
      final newLog = DailyLog()
        ..tasbeehId = tasbeehId
        ..date = today
        ..countForDay = 1;
      await _isar.dailyLogs.put(newLog);
    }
  }
}
