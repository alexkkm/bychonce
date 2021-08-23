import 'package:flutter/material.dart';

class DecorationDayPage extends StatefulWidget {
  const DecorationDayPage({Key? key}) : super(key: key);

  @override
  _DecorationDayPageState createState() => _DecorationDayPageState();
}

class _DecorationDayPageState extends State<DecorationDayPage> {
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
                    ? "新亞書院校慶"
                    : "New Asia DecorationDay")),
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
            Container(child: Image.asset("images/decorationday.jpg")),
            //資料
            Container(
                child: Text((language == "Chinese")
                    ? "新亞書院校慶是新亞在新學期開學後第一個書院活動，在9月孔子誕（官定校慶）至10月10日新亞成立日間舉行，活動包括大笪地(類似年宵的活動，同學可以自由投攤買賣食物或禮物)、千人宴(在新亞書院圓形廣場舉行，當天晚上，很多學生(包括校友)都會聚首一堂，一起吃盆菜看明星表演，場面非常熱鬧)及解謎遊戲(該等遊戲內容配合該年的主題，創作出遊戲讓學生們互相競技，於樂群館地下林耀明夫人堂舉辦，但需以團隊形式預約)。此外，書院亦會在校慶期間，在水塔上掛上「誠明 新亞書院校慶」直幡，並於夜間開啟塔側的射燈，以示慶賀。"
                    : "The New Asia Book School Celebration is the first college activity in Xinya after the start of the new semester, held between the birthday of Confucius in September (official school celebration) and the founding day of The New Asia on October 10, which includes the Day of the Establishment of dazhao (similar to the New Year's Eve activities, students are free to cast stalls) Buying and selling food or gifts), a banquet for a thousand people (held in the round square of the New Asia Academy, where many students (including alumni) gather that evening to eat pots and vegetables to watch the star show, which is very lively) and puzzle games (which match the theme of the year, Create a game for students to compete with each other and be held in the underground Mrs. Lin Yaoming Hall of the Music Hall, but only in the form of a team appointment). In addition, during the school holidays, the College will hang a Chengming New Asian Book School Celebration on the water tower and turn on the spotlights on the side of the tower at night to celebrate."))
          ],
        ),
      ),
    );
  }
}
