import 'package:flutter/material.dart';
import 'package:konamiafricaad/modules/soccer/pages/widgets.dart';

class Soccer extends StatefulWidget {
  const Soccer({Key? key}) : super(key: key);

  @override
  State<Soccer> createState() => _SoccerState();
}

class _SoccerState extends State<Soccer> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.android), text: "Tab 1",),
              Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2"),
            ],
          ),
          title: const Text('konami Africa'),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: [
            Center( child: matchesBuilder()),
            const Center( child: Text("Page 2")),
          ],
        ),
      ),
    );
  }
}
