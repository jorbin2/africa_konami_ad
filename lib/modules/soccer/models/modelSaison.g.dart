// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelSaison.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaisonData _$SaisonDataFromJson(Map<String, dynamic> json) => SaisonData(
      query: json['query'] == null
          ? null
          : Query.fromJson(json['query'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SaisonDataToJson(SaisonData instance) =>
    <String, dynamic>{
      'query': instance.query,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      seasonId: json['season_id'] as int?,
      name: json['name'] as String?,
      isCurrent: json['is_current'] as int?,
      countryId: json['country_id'] as int?,
      leagueId: json['league_id'] as int?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'season_id': instance.seasonId,
      'name': instance.name,
      'is_current': instance.isCurrent,
      'country_id': instance.countryId,
      'league_id': instance.leagueId,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };

Query _$QueryFromJson(Map<String, dynamic> json) => Query(
      apikey: json['apikey'] as String?,
      leagueId: json['league_id'] as String?,
    );

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'apikey': instance.apikey,
      'league_id': instance.leagueId,
    };
