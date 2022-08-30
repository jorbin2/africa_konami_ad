import 'package:json_annotation/json_annotation.dart';

part 'modelSaison.g.dart';

@JsonSerializable()
class SaisonData {
  SaisonData({
    required this.query,
    required this.data,
  });

  final Query? query;
  final List<Datum>? data;

  factory SaisonData.fromJson(Map<String, dynamic> json) => _$SaisonDataFromJson(json);

  @override
  String toString(){
    return '$query, $data';
  }

  Map<String, dynamic> toJson() => _$SaisonDataToJson(this);
}

@JsonSerializable()
class Datum {
  Datum({
    required this.seasonId,
    required this.name,
    required this.isCurrent,
    required this.countryId,
    required this.leagueId,
    required this.startDate,
    required this.endDate,
  });

  @JsonKey(name: 'season_id')
  final int? seasonId;
  final String? name;

  @JsonKey(name: 'is_current')
  final int? isCurrent;

  @JsonKey(name: 'country_id')
  final int? countryId;

  @JsonKey(name: 'league_id')
  final int? leagueId;

  @JsonKey(name: 'start_date')
  final DateTime? startDate;

  @JsonKey(name: 'end_date')
  final DateTime? endDate;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  String toString(){
    return '$seasonId, $name, $isCurrent, $countryId, $leagueId, $startDate, $endDate';
  }

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Query {
  Query({
    required this.apikey,
    required this.leagueId,
  });

  final String? apikey;

  @JsonKey(name: 'league_id')
  final String? leagueId;

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  @override
  String toString(){
    return '$apikey, $leagueId';
  }

  Map<String, dynamic> toJson() => _$QueryToJson(this);
}
