import 'package:flutter/material.dart';

class NANightPage extends StatefulWidget {
  const NANightPage({Key? key}) : super(key: key);

  @override
  _NANightPageState createState() => _NANightPageState();
}

class _NANightPageState extends State<NANightPage> {
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
                child:
                    Text((language == "Chinese") ? "新亞夜" : "New Asia Night")),
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
            Container(child: Image.asset("images/nanight.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞夜通常在每年3月舉行，形式、主題不限，與鄰近聯合書院的聯合繽紛樂同期舉行，並與新唱同時宣傳。2019年新亞夜主題為「置新奇蹤」，形式與校慶類似，已於3月21日順利舉行。"
                    : "The New Asian Night is usually held in March each year, in an open-ended format and theme, in conjunction with the Joint Coloring Music of the adjacent Union Academy, and is promoted in conjunction with the new song. The theme of the New Asian Night 2019 is New Wonders, similar in form to the school celebration, which was successfully held on March 21."))
          ],
        ),
      ),
    );
  }
}
