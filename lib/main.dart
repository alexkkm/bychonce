import 'package:flutter/material.dart';
import 'package:bychonce/fourMajorActivitiesPage.dart';
import 'package:bychonce/historyPage.dart';
import 'package:bychonce/buildingBackground.dart';

void main() {
  runApp(CuGuys());
}

class CuGuys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CU Guys',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String language = "Chinese";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(children: <Widget>[
        //建築背景
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: const Color(0xfff7f7fb)),
          width: 224,
          height: 70,
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BuildingBackgroundPage())),
            child: Text(
              (language == "Chinese") ? "建築背景" : "Building Background",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),

        //新亞四大活動
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: const Color(0xfff7f7fb)),
          width: 224,
          height: 70,
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FourMajorActivitiesPage())),
            child: Text(
              (language == "Chinese") ? "新亞四大活動" : "Four Major Activities",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),

        //History
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: const Color(0xfff7f7fb)),
          width: 224,
          height: 70,
          child: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => HistoryPage())),
            child: Text(
              (language == "Chinese") ? "簡史" : "History",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
