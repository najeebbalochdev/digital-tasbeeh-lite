/// Extension on DateTime to get date-only (midnight) value
extension DateTimeExt on DateTime {
  /// Returns a DateTime with time set to midnight (00:00:00)
  DateTime get dateOnly => DateTime(year, month, day);
}
