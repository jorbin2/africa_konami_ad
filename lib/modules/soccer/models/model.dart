import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class SoccerData {
  SoccerData({
    required this.query,
    required this.data,
  });

  final Query? query;
  final List<Datum>? data;

  factory SoccerData.fromJson(Map<String, dynamic> json) => _$SoccerDataFromJson(json);

  @override
  String toString(){
    return '$query, $data';
  }

  Map<String, dynamic> toJson() => _$SoccerDataToJson(this);
}

@JsonSerializable()
class Datum {
  Datum({
    required this.matchId,
    required this.statusCode,
    required this.status,
    required this.matchStart,
    required this.matchStartIso,
    required this.minute,
    required this.leagueId,
    required this.seasonId,
    required this.stage,
    required this.group,
    required this.round,
    required this.refereeId,
    required this.homeTeam,
    required this.awayTeam,
    required this.stats,
    required this.venue,
  });

  @JsonKey(name: 'match_id')
  final int? matchId;

  @JsonKey(name: 'status_code')
  final int? statusCode;
  final String? status;

  @JsonKey(name: 'match_start')
  final DateTime? matchStart;

  @JsonKey(name: 'match_start_iso')
  final DateTime? matchStartIso;
  final dynamic minute;

  @JsonKey(name: 'league_id')
  final int? leagueId;

  @JsonKey(name: 'season_id')
  final int? seasonId;
  final Stage? stage;
  final Group? group;
  final Round? round;

  @JsonKey(name: 'referee_id')
  final dynamic refereeId;

  @JsonKey(name: 'home_team')
  final Team? homeTeam;

  @JsonKey(name: 'away_team')
  final Team? awayTeam;
  final Stats? stats;
  final Venue? venue;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  String toString(){
    return '$matchId, $statusCode, $status, $matchStart, $matchStartIso, $minute, $leagueId, $seasonId, $stage, $group, $round, $refereeId, $homeTeam, $awayTeam, $stats, $venue';
  }

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Team {
  Team({
    required this.teamId,
    required this.name,
    required this.shortCode,
    required this.commonName,
    required this.logo,
    required this.country,
  });

  @JsonKey(name: 'team_id')
  final int? teamId;
  final String? name;

  @JsonKey(name: 'short_code')
  final String? shortCode;

  @JsonKey(name: 'common_name')
  final String? commonName;
  final String? logo;
  final Country? country;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  @override
  String toString(){
    return '$teamId, $name, $shortCode, $commonName, $logo, $country';
  }

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable()
class Country {
  Country({
    required this.countryId,
    required this.name,
    required this.countryCode,
    required this.continent,
  });

  @JsonKey(name: 'country_id')
  final int? countryId;
  final String? name;

  @JsonKey(name: 'country_code')
  final String? countryCode;
  final String? continent;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  @override
  String toString(){
    return '$countryId, $name, $countryCode, $continent';
  }

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class Group {
  Group({
    required this.groupId,
    required this.groupName,
  });

  @JsonKey(name: 'group_id')
  final int? groupId;

  @JsonKey(name: 'group_name')
  final String? groupName;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  @override
  String toString(){
    return '$groupId, $groupName';
  }

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}

@JsonSerializable()
class Round {
  Round({
    required this.roundId,
    required this.name,
    required this.isCurrent,
  });

  @JsonKey(name: 'round_id')
  final int? roundId;
  final String? name;

  @JsonKey(name: 'is_current')
  final dynamic isCurrent;

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

  @override
  String toString(){
    return '$roundId, $name, $isCurrent';
  }

  Map<String, dynamic> toJson() => _$RoundToJson(this);
}

@JsonSerializable()
class Stage {
  Stage({
    required this.stageId,
    required this.name,
  });

  @JsonKey(name: 'stage_id')
  final int? stageId;
  final String? name;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);

  @override
  String toString(){
    return '$stageId, $name';
  }

  Map<String, dynamic> toJson() => _$StageToJson(this);
}

@JsonSerializable()
class Stats {
  Stats({
    required this.homeScore,
    required this.awayScore,
    required this.htScore,
    required this.ftScore,
    required this.etScore,
    required this.psScore,
  });

  @JsonKey(name: 'home_score')
  final int? homeScore;

  @JsonKey(name: 'away_score')
  final int? awayScore;

  @JsonKey(name: 'ht_score')
  final dynamic htScore;

  @JsonKey(name: 'ft_score')
  final dynamic ftScore;

  @JsonKey(name: 'et_score')
  final dynamic etScore;

  @JsonKey(name: 'ps_score')
  final dynamic psScore;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  @override
  String toString(){
    return '$homeScore, $awayScore, $htScore, $ftScore, $etScore, $psScore';
  }

  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class Venue {
  Venue({
    required this.venueId,
    required this.name,
    required this.capacity,
    required this.city,
    required this.countryId,
  });

  @JsonKey(name: 'venue_id')
  final int? venueId;
  final String? name;
  final int? capacity;
  final String? city;

  @JsonKey(name: 'country_id')
  final int? countryId;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  @override
  String toString(){
    return '$venueId, $name, $capacity, $city, $countryId';
  }

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}

@JsonSerializable()
class Query {
  Query({
    required this.apikey,
    required this.seasonId,
    required this.dateFrom,
  });

  final String? apikey;

  @JsonKey(name: 'season_id')
  final String? seasonId;

  @JsonKey(name: 'date_from')
  final DateTime? dateFrom;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  @override
  String toString(){
    return '$apikey, $seasonId, $dateFrom';
  }

  Map<String, dynamic> toJson() => _$QueryToJson(this);
}


