

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/model.dart';
import '../models/modelSaison.dart';
class Apiservice {
   final apikey='91e5bba0-8fc6-11ec-8a68-596572b37efe';
   late  int saisonId=0;



  Apiservice();

    getSaisonId(int leagueId) async {
    var id=301;

    if(leagueId!=null)
    {
      id = leagueId;
    };

    final response =
        await http.get(Uri.parse('https://app.sportdataapi.com/api/v1/soccer/seasons?apikey=$apikey&league_id=$id'));
    if (response.statusCode == 200) {
      final jsonData = response.body;
      final saisonData = json.decode(jsonData);

      SaisonData sd = SaisonData.fromJson(saisonData);
     for(var i in sd.data!){
       if(i.isCurrent==1){
         this.saisonId=i.seasonId!;

       }

     }



    } else {
      throw Exception('Failed to load');
    }

  }


  Future<SoccerData> getAllMatchs() async {

    DateTime dateTime = DateTime.now();
    String YYYY_MM_DD = dateTime.toIso8601String().split('T').first;
    print('date : $YYYY_MM_DD');



    final response =
    await http.get(Uri.parse(
        'https://app.sportdataapi.com/api/v1/soccer/matches?apikey=$apikey&season_id=3188&date_from=$YYYY_MM_DD'));
    if (response.statusCode == 200) {
      final jsonData = response.body;
      final soccerData = json.decode(jsonData);

      SoccerData sc = SoccerData.fromJson(soccerData);
      await FirebaseFirestore.instance.collection('matchs').add(
        sc.toJson(),
      );

      return sc;
    } else {
      throw Exception('Failed to load');
    }
  }
}