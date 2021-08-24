import 'package:flutter/material.dart';
import 'package:bychonce/Activites/fourMajorActivitiesPage.dart';
import 'package:bychonce/History/historyPage.dart';
import 'package:bychonce/Buildings/buildingBackground.dart';

void main() {
  runApp(CuGuys());
}

class CuGuys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Color(0XFFc06c30),
      ),
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

  switchChinese() {
    setState(() {
      language = "Chinese";
    });
  }

  switchEnglish() {
    setState(() {
      language = "English";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 225,
              child: Text(
                (language == "Chinese") ? "主頁" : "Home Page",
                textAlign: TextAlign.left,
              ),
            ),
            TextButton(
              onPressed: () => switchChinese(),
              child: Text(
                "中",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () => switchEnglish(),
              child: Text(
                "ENG",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          //建築背景
          Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Color(0XFFc06c30), width: 1))),
              width: 500,
              height: 90,
              child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BuildingBackgroundPage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "建築背景"
                            : "Building Background",
                        style:
                            TextStyle(fontSize: 35, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),

          //新亞四大活動
          Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Color(0XFFc06c30), width: 1))),
              width: 500,
              height: 90,
              child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FourMajorActivitiesPage(language))),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "新亞四大活動"
                            : "Four Major Activities",
                        style:
                            TextStyle(fontSize: 35, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),

          //簡史
          Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: Divider.createBorderSide(context,
                          color: Color(0XFFc06c30), width: 1))),
              width: 500,
              height: 90,
              child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryPage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese") ? "簡史" : "History",
                        style:
                            TextStyle(fontSize: 35, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
