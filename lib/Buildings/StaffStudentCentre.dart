import 'package:flutter/material.dart';

class StaffStudentCenterPage extends StatefulWidget {
  const StaffStudentCenterPage({Key? key}) : super(key: key);

  @override
  _StaffStudentCenterPageState createState() => _StaffStudentCenterPageState();
}

class _StaffStudentCenterPageState extends State<StaffStudentCenterPage> {
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
                    ? "樂群館梁雄姬樓"
                    : "Staff Student Centre")),
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
            Container(child: Image.asset("images/樂群館.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "位於新亞書院之中心，初期僅稱樂群館，「樂群」取自《禮記‧學記》：「一年視離經辨志，三年視敬業樂群。」2005年樓為感謝時任校董梁雄姬女士對新亞書院的付出，特意舉行「樂群館梁雄姬樓冠名典禮」新亞書院學生會會室亦設於本館，並備有各類學生用品以供購買。此外走讀生舍堂及部分Soc房皆位於館內。最近在2012年完成了大規模改建，大樓內部較為嶄新。"
                    : ""))
          ],
        ),
      ),
    );
  }
}
