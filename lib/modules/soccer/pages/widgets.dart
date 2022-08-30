import 'package:flutter/material.dart';

import '../models/model.dart';
import '../services/apiService.dart';

Widget PageBody(List<Datum> allmatches) {
  return Column(
    children: [

      Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF4373D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(allmatches[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}

Widget goalStat(dynamic expandedTime, int homeGoal, int awayGoal) {
  var home = homeGoal;
  var away = awayGoal;
  var elapsed = expandedTime;
  if (home == null) home = 0;
  if (away == null) away = 0;
  if (elapsed == null) elapsed = 0;
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${elapsed}'",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "${home} - ${away}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image.network(
            logoUrl,
            height: 50,
            width: 50,

          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
  );
}

Widget matchTile(Datum match) {
  var homeGoal = match.stats!.homeScore;
  var awayGoal = match.stats!.awayScore;
  var date = match.matchStart!;
  if (homeGoal == null) homeGoal = 0;
  if (awayGoal == null) awayGoal = 0;

  return Container(
    margin: EdgeInsets.symmetric(vertical: 12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                match.homeTeam!.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
            Image.network(
              match.homeTeam!.logo!,
              height: 50,
              width: 50,

            ),
            const Expanded(
              child: Text(
                "VS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
            Image.network(
              match.awayTeam!.logo!,
              height: 50,
              width: 50,


            ),
            Expanded(
              child: Text(
                match.awayTeam!.name!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),

          ],
        ),
        Text('date:',style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),),
        Text('$date',style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),),
      ],
    )
  );
}



Widget matchesBuilder(){
  Apiservice as = Apiservice();
  return Scaffold(
    body:  FutureBuilder<SoccerData>(
      future:as.getAllMatchs(), //Here we will call our getData() method,
      builder: (context, snapshot){
        //the future builder is very intersting to use when you work with api
        if (snapshot.hasData) {
          print((snapshot.data!.data));
          return PageBody(snapshot.data!.data!);
        } else if(snapshot.hasError){
          print(snapshot.error);
          return Container();

        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }, // here we will buil the app layout
    ),
  ) ;
}