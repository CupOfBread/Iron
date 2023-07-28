// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Artist.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetArtistCollection on Isar {
  IsarCollection<Artist> get artists => this.collection();
}

const ArtistSchema = CollectionSchema(
  name: r'Artist',
  id: 3750894727498641923,
  properties: {
    r'albumSize': PropertySchema(
      id: 0,
      name: r'albumSize',
      type: IsarType.long,
    ),
    r'alias': PropertySchema(
      id: 1,
      name: r'alias',
      type: IsarType.stringList,
    ),
    r'avatarUrl': PropertySchema(
      id: 2,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'briefDesc': PropertySchema(
      id: 3,
      name: r'briefDesc',
      type: IsarType.string,
    ),
    r'ironId': PropertySchema(
      id: 4,
      name: r'ironId',
      type: IsarType.string,
    ),
    r'musicSize': PropertySchema(
      id: 5,
      name: r'musicSize',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'transNames': PropertySchema(
      id: 7,
      name: r'transNames',
      type: IsarType.string,
    ),
    r'wyyId': PropertySchema(
      id: 8,
      name: r'wyyId',
      type: IsarType.string,
    )
  },
  estimateSize: _artistEstimateSize,
  serialize: _artistSerialize,
  deserialize: _artistDeserialize,
  deserializeProp: _artistDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _artistGetId,
  getLinks: _artistGetLinks,
  attach: _artistAttach,
  version: '3.1.0+1',
);

int _artistEstimateSize(
  Artist object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.alias;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.avatarUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.briefDesc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ironId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.transNames;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.wyyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _artistSerialize(
  Artist object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.albumSize);
  writer.writeStringList(offsets[1], object.alias);
  writer.writeString(offsets[2], object.avatarUrl);
  writer.writeString(offsets[3], object.briefDesc);
  writer.writeString(offsets[4], object.ironId);
  writer.writeLong(offsets[5], object.musicSize);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.transNames);
  writer.writeString(offsets[8], object.wyyId);
}

Artist _artistDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Artist();
  object.albumSize = reader.readLongOrNull(offsets[0]);
  object.alias = reader.readStringList(offsets[1]);
  object.avatarUrl = reader.readStringOrNull(offsets[2]);
  object.briefDesc = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.ironId = reader.readStringOrNull(offsets[4]);
  object.musicSize = reader.readLongOrNull(offsets[5]);
  object.name = reader.readStringOrNull(offsets[6]);
  object.transNames = reader.readStringOrNull(offsets[7]);
  object.wyyId = reader.readStringOrNull(offsets[8]);
  return object;
}

P _artistDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _artistGetId(Artist object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _artistGetLinks(Artist object) {
  return [];
}

void _artistAttach(IsarCollection<dynamic> col, Id id, Artist object) {
  object.id = id;
}

extension ArtistQueryWhereSort on QueryBuilder<Artist, Artist, QWhere> {
  QueryBuilder<Artist, Artist, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ArtistQueryWhere on QueryBuilder<Artist, Artist, QWhereClause> {
  QueryBuilder<Artist, Artist, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Artist, Artist, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterWhereClause> idBetween(
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

extension ArtistQueryFilter on QueryBuilder<Artist, Artist, QFilterCondition> {
  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'albumSize',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'albumSize',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'albumSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'albumSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> albumSizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'albumSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alias',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alias',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alias',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alias',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alias',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alias',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alias',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> aliasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alias',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'avatarUrl',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'avatarUrl',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'briefDesc',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'briefDesc',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'briefDesc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'briefDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'briefDesc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'briefDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> briefDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'briefDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ironId',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ironId',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ironId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ironId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ironId',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> ironIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ironId',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'musicSize',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'musicSize',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'musicSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'musicSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'musicSize',
        value: value,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> musicSizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'musicSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transNames',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transNames',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transNames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transNames',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> transNamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wyyId',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wyyId',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wyyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wyyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wyyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Artist, Artist, QAfterFilterCondition> wyyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wyyId',
        value: '',
      ));
    });
  }
}

extension ArtistQueryObject on QueryBuilder<Artist, Artist, QFilterCondition> {}

extension ArtistQueryLinks on QueryBuilder<Artist, Artist, QFilterCondition> {}

extension ArtistQuerySortBy on QueryBuilder<Artist, Artist, QSortBy> {
  QueryBuilder<Artist, Artist, QAfterSortBy> sortByAlbumSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumSize', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByAlbumSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumSize', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByBriefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByBriefDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByIronId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByIronIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByMusicSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicSize', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByMusicSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicSize', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByTransNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transNames', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByTransNamesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transNames', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByWyyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> sortByWyyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.desc);
    });
  }
}

extension ArtistQuerySortThenBy on QueryBuilder<Artist, Artist, QSortThenBy> {
  QueryBuilder<Artist, Artist, QAfterSortBy> thenByAlbumSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumSize', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByAlbumSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumSize', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByBriefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByBriefDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByIronId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByIronIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByMusicSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicSize', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByMusicSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'musicSize', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByTransNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transNames', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByTransNamesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transNames', Sort.desc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByWyyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.asc);
    });
  }

  QueryBuilder<Artist, Artist, QAfterSortBy> thenByWyyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.desc);
    });
  }
}

extension ArtistQueryWhereDistinct on QueryBuilder<Artist, Artist, QDistinct> {
  QueryBuilder<Artist, Artist, QDistinct> distinctByAlbumSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'albumSize');
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByAlias() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alias');
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByAvatarUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByBriefDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'briefDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByIronId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ironId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByMusicSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'musicSize');
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByTransNames(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transNames', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Artist, Artist, QDistinct> distinctByWyyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wyyId', caseSensitive: caseSensitive);
    });
  }
}

extension ArtistQueryProperty on QueryBuilder<Artist, Artist, QQueryProperty> {
  QueryBuilder<Artist, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Artist, int?, QQueryOperations> albumSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'albumSize');
    });
  }

  QueryBuilder<Artist, List<String>?, QQueryOperations> aliasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alias');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> briefDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'briefDesc');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> ironIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ironId');
    });
  }

  QueryBuilder<Artist, int?, QQueryOperations> musicSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'musicSize');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> transNamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transNames');
    });
  }

  QueryBuilder<Artist, String?, QQueryOperations> wyyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wyyId');
    });
  }
}
