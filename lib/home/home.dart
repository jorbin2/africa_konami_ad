import 'package:flutter/material.dart';


import '../modules/soccer/models/model.dart';
import '../modules/soccer/pages/widgets.dart';
import '../modules/soccer/services/apiService.dart';
import '../modules/soccer/soccer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Apiservice as = Apiservice();
  @override
   initState(){
    // TODO: implement initState
    super.initState();
    as.getSaisonId(301);
    as.getAllMatchs();
  }

  @override
  Widget build(BuildContext context) {
    return Container();

  }
}
