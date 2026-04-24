// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasbeeh.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTasbeehCollection on Isar {
  IsarCollection<Tasbeeh> get tasbeehs => this.collection();
}

const TasbeehSchema = CollectionSchema(
  name: r'Tasbeeh',
  id: -2038691689034431346,
  properties: {
    r'arabicText': PropertySchema(
      id: 0,
      name: r'arabicText',
      type: IsarType.string,
    ),
    r'count': PropertySchema(
      id: 1,
      name: r'count',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'isNamazSet': PropertySchema(
      id: 3,
      name: r'isNamazSet',
      type: IsarType.bool,
    ),
    r'isPreset': PropertySchema(
      id: 4,
      name: r'isPreset',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'roundsCompleted': PropertySchema(
      id: 6,
      name: r'roundsCompleted',
      type: IsarType.long,
    ),
    r'sortOrder': PropertySchema(
      id: 7,
      name: r'sortOrder',
      type: IsarType.long,
    ),
    r'target': PropertySchema(
      id: 8,
      name: r'target',
      type: IsarType.long,
    ),
    r'themeKey': PropertySchema(
      id: 9,
      name: r'themeKey',
      type: IsarType.string,
    ),
    r'totalCount': PropertySchema(
      id: 10,
      name: r'totalCount',
      type: IsarType.long,
    ),
    r'transliteration': PropertySchema(
      id: 11,
      name: r'transliteration',
      type: IsarType.string,
    )
  },
  estimateSize: _tasbeehEstimateSize,
  serialize: _tasbeehSerialize,
  deserialize: _tasbeehDeserialize,
  deserializeProp: _tasbeehDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tasbeehGetId,
  getLinks: _tasbeehGetLinks,
  attach: _tasbeehAttach,
  version: '3.1.0+1',
);

int _tasbeehEstimateSize(
  Tasbeeh object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.arabicText.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.themeKey.length * 3;
  bytesCount += 3 + object.transliteration.length * 3;
  return bytesCount;
}

void _tasbeehSerialize(
  Tasbeeh object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.arabicText);
  writer.writeLong(offsets[1], object.count);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeBool(offsets[3], object.isNamazSet);
  writer.writeBool(offsets[4], object.isPreset);
  writer.writeString(offsets[5], object.name);
  writer.writeLong(offsets[6], object.roundsCompleted);
  writer.writeLong(offsets[7], object.sortOrder);
  writer.writeLong(offsets[8], object.target);
  writer.writeString(offsets[9], object.themeKey);
  writer.writeLong(offsets[10], object.totalCount);
  writer.writeString(offsets[11], object.transliteration);
}

Tasbeeh _tasbeehDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tasbeeh();
  object.arabicText = reader.readString(offsets[0]);
  object.count = reader.readLong(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.id = id;
  object.isNamazSet = reader.readBool(offsets[3]);
  object.isPreset = reader.readBool(offsets[4]);
  object.name = reader.readString(offsets[5]);
  object.roundsCompleted = reader.readLong(offsets[6]);
  object.sortOrder = reader.readLong(offsets[7]);
  object.target = reader.readLong(offsets[8]);
  object.themeKey = reader.readString(offsets[9]);
  object.totalCount = reader.readLong(offsets[10]);
  object.transliteration = reader.readString(offsets[11]);
  return object;
}

P _tasbeehDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tasbeehGetId(Tasbeeh object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tasbeehGetLinks(Tasbeeh object) {
  return [];
}

void _tasbeehAttach(IsarCollection<dynamic> col, Id id, Tasbeeh object) {
  object.id = id;
}

extension TasbeehQueryWhereSort on QueryBuilder<Tasbeeh, Tasbeeh, QWhere> {
  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TasbeehQueryWhere on QueryBuilder<Tasbeeh, Tasbeeh, QWhereClause> {
  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TasbeehQueryFilter
    on QueryBuilder<Tasbeeh, Tasbeeh, QFilterCondition> {
  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arabicText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arabicText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arabicText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arabicText',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> arabicTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arabicText',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> countEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> isNamazSetEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNamazSet',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> isPresetEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPreset',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> roundsCompletedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roundsCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition>
      roundsCompletedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roundsCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> roundsCompletedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roundsCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> roundsCompletedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roundsCompleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> sortOrderEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> sortOrderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> sortOrderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> sortOrderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> targetEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> targetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> targetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'target',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> targetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'target',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> themeKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> totalCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> totalCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> totalCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> totalCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition>
      transliterationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transliteration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition>
      transliterationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transliteration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition> transliterationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transliteration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition>
      transliterationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transliteration',
        value: '',
      ));
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterFilterCondition>
      transliterationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transliteration',
        value: '',
      ));
    });
  }
}

extension TasbeehQueryObject
    on QueryBuilder<Tasbeeh, Tasbeeh, QFilterCondition> {}

extension TasbeehQueryLinks
    on QueryBuilder<Tasbeeh, Tasbeeh, QFilterCondition> {}

extension TasbeehQuerySortBy on QueryBuilder<Tasbeeh, Tasbeeh, QSortBy> {
  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByArabicText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicText', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByArabicTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicText', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByIsNamazSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNamazSet', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByIsNamazSetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNamazSet', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByIsPreset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPreset', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByIsPresetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPreset', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByRoundsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundsCompleted', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByRoundsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundsCompleted', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortBySortOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByThemeKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeKey', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByThemeKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeKey', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTotalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCount', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTotalCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCount', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTransliteration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transliteration', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> sortByTransliterationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transliteration', Sort.desc);
    });
  }
}

extension TasbeehQuerySortThenBy
    on QueryBuilder<Tasbeeh, Tasbeeh, QSortThenBy> {
  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByArabicText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicText', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByArabicTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicText', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByIsNamazSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNamazSet', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByIsNamazSetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNamazSet', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByIsPreset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPreset', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByIsPresetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPreset', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByRoundsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundsCompleted', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByRoundsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundsCompleted', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenBySortOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'target', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByThemeKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeKey', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByThemeKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeKey', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTotalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCount', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTotalCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCount', Sort.desc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTransliteration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transliteration', Sort.asc);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QAfterSortBy> thenByTransliterationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transliteration', Sort.desc);
    });
  }
}

extension TasbeehQueryWhereDistinct
    on QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> {
  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByArabicText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arabicText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByIsNamazSet() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNamazSet');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByIsPreset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPreset');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByRoundsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roundsCompleted');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortOrder');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'target');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByThemeKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByTotalCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCount');
    });
  }

  QueryBuilder<Tasbeeh, Tasbeeh, QDistinct> distinctByTransliteration(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transliteration',
          caseSensitive: caseSensitive);
    });
  }
}

extension TasbeehQueryProperty
    on QueryBuilder<Tasbeeh, Tasbeeh, QQueryProperty> {
  QueryBuilder<Tasbeeh, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Tasbeeh, String, QQueryOperations> arabicTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arabicText');
    });
  }

  QueryBuilder<Tasbeeh, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<Tasbeeh, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Tasbeeh, bool, QQueryOperations> isNamazSetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNamazSet');
    });
  }

  QueryBuilder<Tasbeeh, bool, QQueryOperations> isPresetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPreset');
    });
  }

  QueryBuilder<Tasbeeh, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Tasbeeh, int, QQueryOperations> roundsCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roundsCompleted');
    });
  }

  QueryBuilder<Tasbeeh, int, QQueryOperations> sortOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortOrder');
    });
  }

  QueryBuilder<Tasbeeh, int, QQueryOperations> targetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'target');
    });
  }

  QueryBuilder<Tasbeeh, String, QQueryOperations> themeKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeKey');
    });
  }

  QueryBuilder<Tasbeeh, int, QQueryOperations> totalCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCount');
    });
  }

  QueryBuilder<Tasbeeh, String, QQueryOperations> transliterationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transliteration');
    });
  }
}
