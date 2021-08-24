import 'package:flutter/material.dart';

class NASingPage extends StatefulWidget {
  const NASingPage({Key? key}) : super(key: key);

  @override
  _NASingPageState createState() => _NASingPageState();
}

class _NASingPageState extends State<NASingPage> {
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
                    ? "新亞書院歌唱比賽"
                    : "New Asia Singing Competition")),
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
            Container(child: Image.asset("images/nasing.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞書院歌唱比賽，簡稱新唱，是新亞書院其中一項大活動，通常在每年的2-3月舉行，比賽分個人、團體以及哈哈組。比賽設有初賽（2月，通常在圓型廣場進行）及決賽（3月尾，在邵逸夫堂舉行）。 2016年新唱的主題為「童夢成新」。 2017年新唱的主題為「扣人新弦」，而新亞前院長暨中大前校長金耀基、新亞輔導長莊太量等人有份贊助該屆新唱。 2018年新唱的主題為「浮新若夢」。 2019年新唱的主題為「聆新鏡映」。"
                    : "The New Asian Academy Singing Competition, short for New Singing, is one of the major events of the New Asian Academy, usually held in February-March of each year, divided into individuals, groups and haha groups. The competition features the first race (in February, usually in the round square) and the final (late March, at Yifu Hall). The theme of the new song in 2016 is Children's Dreams Become New. The theme of the new song in 2017 is Holding New Strings, while Jin Yaoji, former president of Xinya and former president of the University of China, and Taiji Zhuang, director of Xinya Coach, etc., have sponsored the new singing. The theme of the new song in 2018 is Dreaming New. The theme of the new song in 2019 is Hearing the New Mirror."))
          ],
        ),
      ),
    );
  }
}
