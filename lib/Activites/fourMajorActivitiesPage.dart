import 'package:bychonce/Activites/Decorationday.dart';
import 'package:bychonce/Activites/nanight.dart';
import 'package:bychonce/Activites/nasing.dart';
import 'package:bychonce/Activites/ocamp.dart';
import 'package:flutter/material.dart';

class FourMajorActivitiesPage extends StatefulWidget {
  const FourMajorActivitiesPage(String language, {Key? key}) : super(key: key);

  @override
  _FourMajorActivitiesPageState createState() =>
      _FourMajorActivitiesPageState();
}

class _FourMajorActivitiesPageState extends State<FourMajorActivitiesPage> {
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
          children: [
            Container(
              width: 175,
              child: Text(
                (((language == "Chinese") ? "四大活動" : "Four Major Activities")),
                style: TextStyle(fontSize: 25),
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
      body: Stack(
        children: [
          //bottom level
          Image.asset("images/background3.jpg"),
          Column(
            children: [
              //新亞書院迎新營
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
                          MaterialPageRoute(builder: (context) => OcampPage())),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 21.0)),
                          Text(
                            (language == "Chinese")
                                ? "新亞書院迎新營"
                                : "New Asia Orientation Camp",
                            style: TextStyle(
                                fontSize: 25, color: Color(0XFFc06c30)),
                          ),
                        ],
                      ))),

              //新亞書院校慶
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
                              builder: (context) => DecorationDayPage())),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 21.0)),
                          Text(
                            (language == "Chinese")
                                ? "新亞書院校慶"
                                : "New Asia DecorationDay",
                            style: TextStyle(
                                fontSize: 25, color: Color(0XFFc06c30)),
                          ),
                        ],
                      ))),

              //新亞書院歌唱比賽
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
                              builder: (context) => NASingPage())),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 21.0)),
                          Text(
                            (language == "Chinese")
                                ? "新亞書院歌唱比賽"
                                : "New Asia Singing Competition",
                            style: TextStyle(
                                fontSize: 25, color: Color(0XFFc06c30)),
                          ),
                        ],
                      ))),

              //新亞夜
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
                              builder: (context) => NANightPage())),
                      child: Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 21.0)),
                          Text(
                            (language == "Chinese") ? "新亞夜" : "New Asia Night",
                            style: TextStyle(
                                fontSize: 25, color: Color(0XFFc06c30)),
                          ),
                        ],
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
