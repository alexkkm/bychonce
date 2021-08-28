import 'package:bychonce/Buildings/Amphitheatre.dart';
import 'package:bychonce/Buildings/MrsDavidLamHall.dart';
import 'package:bychonce/Buildings/StaffStudentCentre.dart';
import 'package:bychonce/Buildings/WaterTower.dart';
import 'package:flutter/material.dart';

class BuildingBackgroundPage extends StatefulWidget {
  const BuildingBackgroundPage({Key? key}) : super(key: key);

  @override
  _BuildingBackgroundPageState createState() => _BuildingBackgroundPageState();
}

class _BuildingBackgroundPageState extends State<BuildingBackgroundPage> {
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
                ((language == "Chinese") ? "建築背景" : "Building Background"),
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
      body: Column(
        children: <Widget>[
          //樂群館梁雄姬樓
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
                          builder: (context) => StaffStudentCenterPage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "樂群館梁雄姬樓"
                            : "Leung Hung Kee Building",
                        style:
                            TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),

          //林耀明夫人堂
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
                          builder: (context) => MrsDavidLamHallPage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "林耀明夫人堂"
                            : "Mrs David Lam Hall",
                        style:
                            TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),

          //圓形廣場
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
                          builder: (context) => AmphitheatrePage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "圓形廣場"
                            : "New Asia Amphitheatre",
                        style:
                            TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),

          //圓形廣場
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
                          builder: (context) => WaterTowerPage())),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 21.0)),
                      Text(
                        (language == "Chinese")
                            ? "新亞水塔"
                            : "New Asia water Tower",
                        style:
                            TextStyle(fontSize: 25, color: Color(0XFFc06c30)),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
