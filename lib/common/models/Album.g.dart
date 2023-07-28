// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Album.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlbumCollection on Isar {
  IsarCollection<Album> get albums => this.collection();
}

const AlbumSchema = CollectionSchema(
  name: r'Album',
  id: -1355968412107120937,
  properties: {
    r'albumImageUrl': PropertySchema(
      id: 0,
      name: r'albumImageUrl',
      type: IsarType.string,
    ),
    r'albumName': PropertySchema(
      id: 1,
      name: r'albumName',
      type: IsarType.string,
    ),
    r'artistIDs': PropertySchema(
      id: 2,
      name: r'artistIDs',
      type: IsarType.stringList,
    ),
    r'artistNames': PropertySchema(
      id: 3,
      name: r'artistNames',
      type: IsarType.stringList,
    ),
    r'briefDesc': PropertySchema(
      id: 4,
      name: r'briefDesc',
      type: IsarType.string,
    ),
    r'company': PropertySchema(
      id: 5,
      name: r'company',
      type: IsarType.string,
    ),
    r'ironId': PropertySchema(
      id: 6,
      name: r'ironId',
      type: IsarType.string,
    ),
    r'publishTime': PropertySchema(
      id: 7,
      name: r'publishTime',
      type: IsarType.dateTime,
    ),
    r'size': PropertySchema(
      id: 8,
      name: r'size',
      type: IsarType.long,
    ),
    r'songsIds': PropertySchema(
      id: 9,
      name: r'songsIds',
      type: IsarType.stringList,
    ),
    r'wyyId': PropertySchema(
      id: 10,
      name: r'wyyId',
      type: IsarType.string,
    )
  },
  estimateSize: _albumEstimateSize,
  serialize: _albumSerialize,
  deserialize: _albumDeserialize,
  deserializeProp: _albumDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _albumGetId,
  getLinks: _albumGetLinks,
  attach: _albumAttach,
  version: '3.1.0+1',
);

int _albumEstimateSize(
  Album object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.albumImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.albumName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.artistIDs;
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
    final list = object.artistNames;
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
    final value = object.briefDesc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.company;
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
    final list = object.songsIds;
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
    final value = object.wyyId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _albumSerialize(
  Album object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.albumImageUrl);
  writer.writeString(offsets[1], object.albumName);
  writer.writeStringList(offsets[2], object.artistIDs);
  writer.writeStringList(offsets[3], object.artistNames);
  writer.writeString(offsets[4], object.briefDesc);
  writer.writeString(offsets[5], object.company);
  writer.writeString(offsets[6], object.ironId);
  writer.writeDateTime(offsets[7], object.publishTime);
  writer.writeLong(offsets[8], object.size);
  writer.writeStringList(offsets[9], object.songsIds);
  writer.writeString(offsets[10], object.wyyId);
}

Album _albumDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Album();
  object.albumImageUrl = reader.readStringOrNull(offsets[0]);
  object.albumName = reader.readStringOrNull(offsets[1]);
  object.artistIDs = reader.readStringList(offsets[2]);
  object.artistNames = reader.readStringList(offsets[3]);
  object.briefDesc = reader.readStringOrNull(offsets[4]);
  object.company = reader.readStringOrNull(offsets[5]);
  object.id = id;
  object.ironId = reader.readStringOrNull(offsets[6]);
  object.publishTime = reader.readDateTimeOrNull(offsets[7]);
  object.size = reader.readLongOrNull(offsets[8]);
  object.songsIds = reader.readStringList(offsets[9]);
  object.wyyId = reader.readStringOrNull(offsets[10]);
  return object;
}

P _albumDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _albumGetId(Album object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _albumGetLinks(Album object) {
  return [];
}

void _albumAttach(IsarCollection<dynamic> col, Id id, Album object) {
  object.id = id;
}

extension AlbumQueryWhereSort on QueryBuilder<Album, Album, QWhere> {
  QueryBuilder<Album, Album, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AlbumQueryWhere on QueryBuilder<Album, Album, QWhereClause> {
  QueryBuilder<Album, Album, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Album, Album, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Album, Album, QAfterWhereClause> idBetween(
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

extension AlbumQueryFilter on QueryBuilder<Album, Album, QFilterCondition> {
  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'albumImageUrl',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'albumImageUrl',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'albumImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'albumImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'albumImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'albumName',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'albumName',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'albumName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'albumName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'albumName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumName',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> albumNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'albumName',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'artistIDs',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'artistIDs',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'artistIDs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'artistIDs',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'artistIDs',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artistIDs',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistIDsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'artistIDs',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistIDsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistIDs',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'artistNames',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'artistNames',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistNamesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'artistNames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistNamesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'artistNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'artistNames',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistNamesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artistNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistNamesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'artistNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      artistNamesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> artistNamesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'artistNames',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'briefDesc',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'briefDesc',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescEqualTo(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescGreaterThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescLessThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescBetween(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescStartsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescEndsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescContains(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescMatches(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'briefDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> briefDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'briefDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'company',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'company',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'company',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'company',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'company',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ironId',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ironId',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdEqualTo(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdGreaterThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdLessThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdBetween(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdStartsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdEndsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ironId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdMatches(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ironId',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> ironIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ironId',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'publishTime',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'publishTime',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'publishTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'publishTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'publishTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> publishTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'publishTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> sizeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'songsIds',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'songsIds',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'songsIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'songsIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'songsIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'songsIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition>
      songsIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'songsIds',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> songsIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'songsIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wyyId',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wyyId',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdEqualTo(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdGreaterThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdLessThan(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdBetween(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdStartsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdEndsWith(
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

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wyyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wyyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wyyId',
        value: '',
      ));
    });
  }

  QueryBuilder<Album, Album, QAfterFilterCondition> wyyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wyyId',
        value: '',
      ));
    });
  }
}

extension AlbumQueryObject on QueryBuilder<Album, Album, QFilterCondition> {}

extension AlbumQueryLinks on QueryBuilder<Album, Album, QFilterCondition> {}

extension AlbumQuerySortBy on QueryBuilder<Album, Album, QSortBy> {
  QueryBuilder<Album, Album, QAfterSortBy> sortByAlbumImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByAlbumImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByAlbumName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumName', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByAlbumNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumName', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByBriefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByBriefDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByIronId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByIronIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByPublishTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publishTime', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByPublishTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publishTime', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByWyyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> sortByWyyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.desc);
    });
  }
}

extension AlbumQuerySortThenBy on QueryBuilder<Album, Album, QSortThenBy> {
  QueryBuilder<Album, Album, QAfterSortBy> thenByAlbumImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByAlbumImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByAlbumName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumName', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByAlbumNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumName', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByBriefDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByBriefDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'briefDesc', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByIronId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByIronIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ironId', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByPublishTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publishTime', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByPublishTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publishTime', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByWyyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.asc);
    });
  }

  QueryBuilder<Album, Album, QAfterSortBy> thenByWyyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wyyId', Sort.desc);
    });
  }
}

extension AlbumQueryWhereDistinct on QueryBuilder<Album, Album, QDistinct> {
  QueryBuilder<Album, Album, QDistinct> distinctByAlbumImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'albumImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByAlbumName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'albumName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByArtistIDs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'artistIDs');
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByArtistNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'artistNames');
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByBriefDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'briefDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByCompany(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByIronId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ironId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByPublishTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publishTime');
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size');
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctBySongsIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'songsIds');
    });
  }

  QueryBuilder<Album, Album, QDistinct> distinctByWyyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wyyId', caseSensitive: caseSensitive);
    });
  }
}

extension AlbumQueryProperty on QueryBuilder<Album, Album, QQueryProperty> {
  QueryBuilder<Album, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> albumImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'albumImageUrl');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> albumNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'albumName');
    });
  }

  QueryBuilder<Album, List<String>?, QQueryOperations> artistIDsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artistIDs');
    });
  }

  QueryBuilder<Album, List<String>?, QQueryOperations> artistNamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artistNames');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> briefDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'briefDesc');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> ironIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ironId');
    });
  }

  QueryBuilder<Album, DateTime?, QQueryOperations> publishTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publishTime');
    });
  }

  QueryBuilder<Album, int?, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }

  QueryBuilder<Album, List<String>?, QQueryOperations> songsIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'songsIds');
    });
  }

  QueryBuilder<Album, String?, QQueryOperations> wyyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wyyId');
    });
  }
}
