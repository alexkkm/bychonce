import 'package:flutter/material.dart';

class OcampPage extends StatefulWidget {
  const OcampPage({Key? key}) : super(key: key);

  @override
  _OcampPageState createState() => _OcampPageState();
}

class _OcampPageState extends State<OcampPage> {
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
                child: Text((language == "Chinese")
                    ? "新亞書院迎新營"
                    : "New Asia Orientation Camp")),
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child: Image.asset("images/ocamp.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞書院迎新營，乃各書院迎新營之一，是專為準一年級學生亦設的活動，旨趣在於讓他們透過迎新營認識朋友及學長，並瞭解書院和大學生活。新亞迎新營通常在8月尾最後數天舉行，為期4日。其中，在第二日下午的「城市探索」中，部分組別會由新亞中學（新亞書院1956-1973年校址）出發，並藉遊戲認識新亞校史；而在第三日下午，包括本書院在內的四所2000年前成立書院，會進行「四院會師」，並於其後與全部書院學生合照。"
                    : "The New Asia College Orientation Camp is one of the colleges’ orientation camps. It is an activity for prospective first-year students. The purpose is to let them meet friends and seniors through the orientation camp, and learn about college and university life. The New Asia Orientation Camp is usually held in the last few days of August and lasts for 4 days. Among them, in the City Exploration in the afternoon of the second day, some groups will start from New Asia Middle School (the site of New Asia College from 1956 to 1973) and learn about the history of New Asia through games; and in the afternoon of the third day , Four colleges, including the academy, were established before 2000. They will conduct the Four academies, and then take photos with all the students of the college."))
          ],
        ),
      ),
    );
  }
}
