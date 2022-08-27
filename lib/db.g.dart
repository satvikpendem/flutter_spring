// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetRoutineCollection on Isar {
  IsarCollection<Routine> get routines => collection();
}

const RoutineSchema = CollectionSchema(
  name: r'Routine',
  schema:
      r'{"name":"Routine","idName":"routineId","properties":[{"name":"day","type":"String"},{"name":"startTime","type":"Long"},{"name":"title","type":"String"}],"indexes":[{"name":"day","unique":false,"replace":false,"properties":[{"name":"day","type":"Hash","caseSensitive":false}]},{"name":"startTime","unique":false,"replace":false,"properties":[{"name":"startTime","type":"Value","caseSensitive":false}]}],"links":[{"name":"category","target":"Category"}]}',
  idName: r'routineId',
  propertyIds: {r'day': 0, r'startTime': 1, r'title': 2},
  listProperties: {},
  indexIds: {r'day': 0, r'startTime': 1},
  indexValueTypes: {
    r'day': [
      IndexValueType.stringHashCIS,
    ],
    r'startTime': [
      IndexValueType.long,
    ]
  },
  linkIds: {r'category': 0},
  backlinkLinkNames: {},
  getId: _routineGetId,
  getLinks: _routineGetLinks,
  attachLinks: _routineAttachLinks,
  serializeNative: _routineSerializeNative,
  deserializeNative: _routineDeserializeNative,
  deserializePropNative: _routineDeserializePropNative,
  serializeWeb: _routineSerializeWeb,
  deserializeWeb: _routineDeserializeWeb,
  deserializePropWeb: _routineDeserializePropWeb,
  version: 4,
);

int? _routineGetId(Routine object) {
  if (object.routineId == Isar.autoIncrement) {
    return null;
  } else {
    return object.routineId;
  }
}

List<IsarLinkBase<dynamic>> _routineGetLinks(Routine object) {
  return [object.category];
}

void _routineSerializeNative(
    IsarCollection<Routine> collection,
    IsarCObject cObj,
    Routine object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final day$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.day);
  final title$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.title);
  final size =
      (staticSize + 3 + (day$Bytes.length) + 3 + (title$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeByteList(offsets[0], day$Bytes);
  writer.writeDateTime(offsets[1], object.startTime);
  writer.writeByteList(offsets[2], title$Bytes);
}

Routine _routineDeserializeNative(IsarCollection<Routine> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Routine();
  object.day = reader.readString(offsets[0]);
  object.startTime = reader.readDateTime(offsets[1]);
  object.title = reader.readString(offsets[2]);
  _routineAttachLinks(collection, id, object);
  return object;
}

P _routineDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Illegal propertyIndex');
  }
}

Object _routineSerializeWeb(
    IsarCollection<Routine> collection, Routine object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'day', object.day);
  IsarNative.jsObjectSet(jsObj, r'routineId', object.routineId);
  IsarNative.jsObjectSet(
      jsObj, r'startTime', object.startTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, r'title', object.title);
  return jsObj;
}

Routine _routineDeserializeWeb(
    IsarCollection<Routine> collection, Object jsObj) {
  final object = Routine();
  object.day = IsarNative.jsObjectGet(jsObj, r'day') ?? '';
  object.startTime = IsarNative.jsObjectGet(jsObj, r'startTime') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, r'startTime') as int,
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.title = IsarNative.jsObjectGet(jsObj, r'title') ?? '';
  _routineAttachLinks(
      collection, IsarNative.jsObjectGet(jsObj, r'routineId'), object);
  return object;
}

P _routineDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'day':
      return (IsarNative.jsObjectGet(jsObj, r'day') ?? '') as P;
    case r'routineId':
      return (IsarNative.jsObjectGet(jsObj, r'routineId')) as P;
    case r'startTime':
      return (IsarNative.jsObjectGet(jsObj, r'startTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, r'startTime') as int,
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case r'title':
      return (IsarNative.jsObjectGet(jsObj, r'title') ?? '') as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _routineAttachLinks(IsarCollection<dynamic> col, int id, Routine object) {
  object.category.attach(col, col.isar.categorys, r'category', id);
}

extension RoutineQueryWhereSort on QueryBuilder<Routine, Routine, QWhere> {
  QueryBuilder<Routine, Routine, QAfterWhere> anyRoutineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhere> anyStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'startTime'),
      );
    });
  }
}

extension RoutineQueryWhere on QueryBuilder<Routine, Routine, QWhereClause> {
  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdEqualTo(
      int routineId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: routineId,
        upper: routineId,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdNotEqualTo(
      int routineId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: routineId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: routineId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: routineId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: routineId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdGreaterThan(
      int routineId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: routineId, includeLower: include),
      );
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdLessThan(
      int routineId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: routineId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdBetween(
    int lowerRoutineId,
    int upperRoutineId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerRoutineId,
        includeLower: includeLower,
        upper: upperRoutineId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayEqualTo(String day) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'day',
        value: [day],
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayNotEqualTo(String day) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'day',
              lower: [],
              upper: [day],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'day',
              lower: [day],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'day',
              lower: [day],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'day',
              lower: [],
              upper: [day],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeEqualTo(
      DateTime startTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'startTime',
        value: [startTime],
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeNotEqualTo(
      DateTime startTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'startTime',
              lower: [],
              upper: [startTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'startTime',
              lower: [startTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'startTime',
              lower: [startTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'startTime',
              lower: [],
              upper: [startTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeGreaterThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'startTime',
        lower: [startTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeLessThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'startTime',
        lower: [],
        upper: [startTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeBetween(
    DateTime lowerStartTime,
    DateTime upperStartTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'startTime',
        lower: [lowerStartTime],
        includeLower: includeLower,
        upper: [upperStartTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RoutineQueryFilter
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'day',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'day',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'day',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'routineId',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'routineId',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'routineId',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'routineId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension RoutineQueryLinks
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> category(
      FilterQuery<Category> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(
        query.collection.isar.categorys,
        q,
        r'category',
      );
    });
  }
}

extension RoutineQueryWhereSortBy on QueryBuilder<Routine, Routine, QSortBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.desc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension RoutineQueryWhereSortThenBy
    on QueryBuilder<Routine, Routine, QSortThenBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'day', Sort.desc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByRoutineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routineId', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByRoutineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'routineId', Sort.desc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startTime', Sort.desc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension RoutineQueryWhereDistinct
    on QueryBuilder<Routine, Routine, QDistinct> {
  QueryBuilder<Routine, Routine, QDistinct> distinctByDay(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'day', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByStartTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startTime');
    });
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension RoutineQueryProperty
    on QueryBuilder<Routine, Routine, QQueryProperty> {
  QueryBuilder<Routine, int, QQueryOperations> routineIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'routineId');
    });
  }

  QueryBuilder<Routine, String, QQueryOperations> dayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'day');
    });
  }

  QueryBuilder<Routine, DateTime, QQueryOperations> startTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startTime');
    });
  }

  QueryBuilder<Routine, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetCategoryCollection on Isar {
  IsarCollection<Category> get categorys => collection();
}

const CategorySchema = CollectionSchema(
  name: r'Category',
  schema:
      r'{"name":"Category","idName":"categoryId","properties":[{"name":"name","type":"String"}],"indexes":[{"name":"name","unique":true,"replace":false,"properties":[{"name":"name","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: r'categoryId',
  propertyIds: {r'name': 0},
  listProperties: {},
  indexIds: {r'name': 0},
  indexValueTypes: {
    r'name': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _categoryGetId,
  getLinks: _categoryGetLinks,
  attachLinks: _categoryAttachLinks,
  serializeNative: _categorySerializeNative,
  deserializeNative: _categoryDeserializeNative,
  deserializePropNative: _categoryDeserializePropNative,
  serializeWeb: _categorySerializeWeb,
  deserializeWeb: _categoryDeserializeWeb,
  deserializePropWeb: _categoryDeserializePropWeb,
  version: 4,
);

int? _categoryGetId(Category object) {
  if (object.categoryId == Isar.autoIncrement) {
    return null;
  } else {
    return object.categoryId;
  }
}

List<IsarLinkBase<dynamic>> _categoryGetLinks(Category object) {
  return [];
}

void _categorySerializeNative(
    IsarCollection<Category> collection,
    IsarCObject cObj,
    Category object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final name$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.name);
  final size = (staticSize + 3 + (name$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeByteList(offsets[0], name$Bytes);
}

Category _categoryDeserializeNative(IsarCollection<Category> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Category();
  object.name = reader.readString(offsets[0]);
  return object;
}

P _categoryDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Illegal propertyIndex');
  }
}

Object _categorySerializeWeb(
    IsarCollection<Category> collection, Category object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'categoryId', object.categoryId);
  IsarNative.jsObjectSet(jsObj, r'name', object.name);
  return jsObj;
}

Category _categoryDeserializeWeb(
    IsarCollection<Category> collection, Object jsObj) {
  final object = Category();
  object.name = IsarNative.jsObjectGet(jsObj, r'name') ?? '';
  return object;
}

P _categoryDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'categoryId':
      return (IsarNative.jsObjectGet(jsObj, r'categoryId')) as P;
    case r'name':
      return (IsarNative.jsObjectGet(jsObj, r'name') ?? '') as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _categoryAttachLinks(
    IsarCollection<dynamic> col, int id, Category object) {}

extension CategoryByIndex on IsarCollection<Category> {
  Future<Category?> getByName(String name) {
    return getByIndex(r'name', [name]);
  }

  Category? getByNameSync(String name) {
    return getByIndexSync(r'name', [name]);
  }

  Future<bool> deleteByName(String name) {
    return deleteByIndex(r'name', [name]);
  }

  bool deleteByNameSync(String name) {
    return deleteByIndexSync(r'name', [name]);
  }

  Future<List<Category?>> getAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndex(r'name', values);
  }

  List<Category?> getAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'name', values);
  }

  Future<int> deleteAllByName(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'name', values);
  }

  int deleteAllByNameSync(List<String> nameValues) {
    final values = nameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'name', values);
  }

  Future<int> putByName(Category object) {
    return putByIndex(r'name', object);
  }

  int putByNameSync(Category object, {bool saveLinks = true}) {
    return putByIndexSync(r'name', object, saveLinks: saveLinks);
  }

  Future<List<int>> putAllByName(List<Category> objects) {
    return putAllByIndex(r'name', objects);
  }

  List<int> putAllByNameSync(List<Category> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'name', objects, saveLinks: saveLinks);
  }
}

extension CategoryQueryWhereSort on QueryBuilder<Category, Category, QWhere> {
  QueryBuilder<Category, Category, QAfterWhere> anyCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CategoryQueryWhere on QueryBuilder<Category, Category, QWhereClause> {
  QueryBuilder<Category, Category, QAfterWhereClause> categoryIdEqualTo(
      int categoryId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: categoryId,
        upper: categoryId,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> categoryIdNotEqualTo(
      int categoryId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: categoryId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: categoryId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: categoryId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: categoryId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> categoryIdGreaterThan(
      int categoryId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: categoryId, includeLower: include),
      );
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> categoryIdLessThan(
      int categoryId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: categoryId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> categoryIdBetween(
    int lowerCategoryId,
    int upperCategoryId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerCategoryId,
        includeLower: includeLower,
        upper: upperCategoryId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterWhereClause> nameNotEqualTo(
      String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CategoryQueryFilter
    on QueryBuilder<Category, Category, QFilterCondition> {
  QueryBuilder<Category, Category, QAfterFilterCondition> categoryIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterFilterCondition> categoryIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterFilterCondition> categoryIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterFilterCondition> categoryIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Category, Category, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Category, Category, QAfterFilterCondition> nameMatches(
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
}

extension CategoryQueryLinks
    on QueryBuilder<Category, Category, QFilterCondition> {}

extension CategoryQueryWhereSortBy
    on QueryBuilder<Category, Category, QSortBy> {
  QueryBuilder<Category, Category, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Category, Category, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CategoryQueryWhereSortThenBy
    on QueryBuilder<Category, Category, QSortThenBy> {
  QueryBuilder<Category, Category, QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Category, Category, QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Category, Category, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Category, Category, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension CategoryQueryWhereDistinct
    on QueryBuilder<Category, Category, QDistinct> {
  QueryBuilder<Category, Category, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension CategoryQueryProperty
    on QueryBuilder<Category, Category, QQueryProperty> {
  QueryBuilder<Category, int, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<Category, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
