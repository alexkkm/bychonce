import 'package:flutter/material.dart';

class MrsDavidLamHallPage extends StatefulWidget {
  const MrsDavidLamHallPage({Key? key}) : super(key: key);

  @override
  _MrsDavidLamHallPageState createState() => _MrsDavidLamHallPageState();
}

class _MrsDavidLamHallPageState extends State<MrsDavidLamHallPage> {
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
                child: Text(
                    (language == "Chinese") ? "林耀明夫人堂" : "Mrs David Lam Hall")),
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
            Container(child: Image.asset("images/林耀明夫人堂.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "初期稱樂群館學生休息室，本著為學生提供休憩聯誼場所的理念而建，並於1981年舉行開幕儀式。1998年，因時任校董林耀明先生多次出資協助書院發展，書院遂命名休息室為「林耀明夫人堂」，以示感恩尊崇，並於當年四月舉辦揭幕儀式。林耀明夫人堂至今仍是新亞同學的熱門聚腳點，校慶等大型活動的準備亦會在此進行。"
                    : ""))
          ],
        ),
      ),
    );
  }
}
