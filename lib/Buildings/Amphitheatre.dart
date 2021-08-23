import 'package:flutter/material.dart';

class AmphitheatrePage extends StatefulWidget {
  const AmphitheatrePage({Key? key}) : super(key: key);

  @override
  _AmphitheatrePageState createState() => _AmphitheatrePageState();
}

class _AmphitheatrePageState extends State<AmphitheatrePage> {
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
                width: 200,
                child: Text((language == "Chinese")
                    ? "圓形廣場"
                    : "New Asia Amphitheatre")),
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
            Container(child: Image.asset("images/圓形廣場.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞書院圓形廣場為一半圓形的露天廣場，供學生休憩及舉辦活動。廣場上有兩扇圍牆。圍牆分新舊兩部分，樓梯上的為舊圍牆，舞台後的為新圍牆。牆上刻有歷屆畢業生的芳名，作為紀念。新亞書院有不少學生活動都在圓形廣場舉行，包括千人宴晚會、國術會夜粥晚會等。不少校友都曾在這廣場上留下足跡。舊圍牆的另一邊是自由論壇，同學可在牆上自由發表個人意見。圓形廣場是書院及中大之景點，每年都吸引大批畢業生前來拍攝畢業照片。"
                    : "The New Asia Amphitheatre is a popular venue for students to rest and to hold activities. There are two curved walls in the Amphitheatre. The wall at the top of the steps was erected prior to the one behind the stage. Names of the College graduates arranged by year of graduation are engraved on both walls.Quite a lot of activities are held in the Amphitheatre: banquet for a thousand people, martial arts night, etc. Many alumni will visit the Amphitheatre when they return to the campus. At the back of the upper wall is a board for students to freely express their views.The Amphitheatre is one of the sceneries of the College and the University. Every year, many students take their graduate photos here."))
          ],
        ),
      ),
    );
  }
}
