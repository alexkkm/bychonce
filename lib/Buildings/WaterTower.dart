import 'package:flutter/material.dart';

class WaterTowerPage extends StatefulWidget {
  const WaterTowerPage({Key? key}) : super(key: key);

  @override
  _WaterTowerPageState createState() => _WaterTowerPageState();
}

class _WaterTowerPageState extends State<WaterTowerPage> {
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
                    (language == "Chinese") ? "新亞水塔" : "New Asia water Tower")),
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
            Container(child: Image.asset("images/新亞水塔.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞水塔為書院的重要標誌。水塔高120呎，位於圓形廣場旁，不論從大埔道或海旁的高速公路都可看到這座塔形建築。水塔外形線條簡單和諧，與其實用之內部結構相應。塔的外形呈「T」字狀，橫頂部分為直線設計，與聯合水塔弧線設計不同。塔頂水箱儲存鹹、淡水，供應書院各部門的飲用及沖廁所需。塔內有梯級直達塔頂，在塔頂可盡覽中大校園。為免生危險，塔門長時間鎖上。書院如有慶典，亦會於塔外牆張掛宣傳直條，以廣宣傳。"
                    : "The New Asia Water Tower is an important landmark of the College. The 120-feet tower is located next to the Amphitheatre. The tower can be seen from Tai Po Road and the Tolo Harbour Highway.The simple outline of the T-shape tower is congruous with its functional design. The horizontal structure at the top comprises straight lines and rigid angles, which differ from the curvilinear design of United College Water Tower. The tower has tanks storing potable water and flushing water respectively to serve various units and departments of the College. The staircase inside leads to the top of the tower where one can have a panoramic view of the entire University campus. For the sake of safety, the tower door is closed always. During special festivities of the College, a long strip of banner will be hung on the tower wall for publicity."))
          ],
        ),
      ),
    );
  }
}
