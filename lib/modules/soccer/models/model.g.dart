// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoccerData _$SoccerDataFromJson(Map<String, dynamic> json) => SoccerData(
      query: json['query'] == null
          ? null
          : Query.fromJson(json['query'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SoccerDataToJson(SoccerData instance) =>
    <String, dynamic>{
      'query': instance.query,
      'data': instance.data,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      matchId: json['match_id'] as int?,
      statusCode: json['status_code'] as int?,
      status: json['status'] as String?,
      matchStart: json['match_start'] == null
          ? null
          : DateTime.parse(json['match_start'] as String),
      matchStartIso: json['match_start_iso'] == null
          ? null
          : DateTime.parse(json['match_start_iso'] as String),
      minute: json['minute'],
      leagueId: json['league_id'] as int?,
      seasonId: json['season_id'] as int?,
      stage: json['stage'] == null
          ? null
          : Stage.fromJson(json['stage'] as Map<String, dynamic>),
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      round: json['round'] == null
          ? null
          : Round.fromJson(json['round'] as Map<String, dynamic>),
      refereeId: json['referee_id'],
      homeTeam: json['home_team'] == null
          ? null
          : Team.fromJson(json['home_team'] as Map<String, dynamic>),
      awayTeam: json['away_team'] == null
          ? null
          : Team.fromJson(json['away_team'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'match_id': instance.matchId,
      'status_code': instance.statusCode,
      'status': instance.status,
      'match_start': instance.matchStart?.toIso8601String(),
      'match_start_iso': instance.matchStartIso?.toIso8601String(),
      'minute': instance.minute,
      'league_id': instance.leagueId,
      'season_id': instance.seasonId,
      'stage': instance.stage,
      'group': instance.group,
      'round': instance.round,
      'referee_id': instance.refereeId,
      'home_team': instance.homeTeam,
      'away_team': instance.awayTeam,
      'stats': instance.stats,
      'venue': instance.venue,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      teamId: json['team_id'] as int?,
      name: json['name'] as String?,
      shortCode: json['short_code'] as String?,
      commonName: json['common_name'] as String?,
      logo: json['logo'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'team_id': instance.teamId,
      'name': instance.name,
      'short_code': instance.shortCode,
      'common_name': instance.commonName,
      'logo': instance.logo,
      'country': instance.country,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      countryId: json['country_id'] as int?,
      name: json['name'] as String?,
      countryCode: json['country_code'] as String?,
      continent: json['continent'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'country_id': instance.countryId,
      'name': instance.name,
      'country_code': instance.countryCode,
      'continent': instance.continent,
    };

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      groupId: json['group_id'] as int?,
      groupName: json['group_name'] as String?,
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'group_id': instance.groupId,
      'group_name': instance.groupName,
    };

Round _$RoundFromJson(Map<String, dynamic> json) => Round(
      roundId: json['round_id'] as int?,
      name: json['name'] as String?,
      isCurrent: json['is_current'],
    );

Map<String, dynamic> _$RoundToJson(Round instance) => <String, dynamic>{
      'round_id': instance.roundId,
      'name': instance.name,
      'is_current': instance.isCurrent,
    };

Stage _$StageFromJson(Map<String, dynamic> json) => Stage(
      stageId: json['stage_id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$StageToJson(Stage instance) => <String, dynamic>{
      'stage_id': instance.stageId,
      'name': instance.name,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      homeScore: json['home_score'] as int?,
      awayScore: json['away_score'] as int?,
      htScore: json['ht_score'],
      ftScore: json['ft_score'],
      etScore: json['et_score'],
      psScore: json['ps_score'],
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'home_score': instance.homeScore,
      'away_score': instance.awayScore,
      'ht_score': instance.htScore,
      'ft_score': instance.ftScore,
      'et_score': instance.etScore,
      'ps_score': instance.psScore,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) => Venue(
      venueId: json['venue_id'] as int?,
      name: json['name'] as String?,
      capacity: json['capacity'] as int?,
      city: json['city'] as String?,
      countryId: json['country_id'] as int?,
    );

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      'venue_id': instance.venueId,
      'name': instance.name,
      'capacity': instance.capacity,
      'city': instance.city,
      'country_id': instance.countryId,
    };

Query _$QueryFromJson(Map<String, dynamic> json) => Query(
      apikey: json['apikey'] as String?,
      seasonId: json['season_id'] as String?,
      dateFrom: json['date_from'] == null
          ? null
          : DateTime.parse(json['date_from'] as String),
    );

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'apikey': instance.apikey,
      'season_id': instance.seasonId,
      'date_from': instance.dateFrom?.toIso8601String(),
    };
