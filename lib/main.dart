import 'package:bychonce/CommentBoard.dart';
import 'package:flutter/material.dart';
import 'package:bychonce/Activites/FourMajorActivitiesPage.dart';
import 'package:bychonce/History/HistoryPage.dart';
import 'package:bychonce/Buildings/BuildingBackground.dart';

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
      //appbar
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 220,
              child: Text(
                (language == "Chinese") ? "主頁" : "Home Page",
                textAlign: TextAlign.left,
              ),
            ),
            Container(width: 10),
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

      //body content
      body: Stack(children: [
        //bottom level
        Image.asset("images/background3.jpg"),

        //top level
        Column(
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
                              TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
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
                              TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
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
                              TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                        ),
                      ],
                    ))),

            //Comment Board
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
                            builder: (context) => CommentBoard())),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 21.0)),
                        Text(
                          (language == "Chinese") ? "留言版" : "Comment Board",
                          style:
                              TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                        ),
                      ],
                    ))),
          ],
        ),
      ]),
    );
  }
}
