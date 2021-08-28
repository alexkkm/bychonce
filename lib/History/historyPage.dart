import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
                ((language == "Chinese") ? "新亞歷史" : "New Asia History"),
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
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(child: Image.asset("images/history1.jpg")),
            //資料一
            Container(
                child: Text((language == "Chinese")
                    ? "新亞書院創立於一九四九年，為已故錢穆先生及一群來自內地之學者，在極艱難窮困的環境中所創辦，其目的在上溯宋明書院講學精神，旁採西歐大學導師制度，以人文主義之教育宗旨，溝通東西文化，為人類和平、社會幸福謀前途。新亞書院的前身是亞洲文商專科夜校。一九四九年十月十日正式開學，當時並無固定校舍，只租用九龍偉晴街華南中學三課室在夜間上課，校長是錢穆先生。由於每晚上課只有三小時，所以課程都是一些共同必修科。計有錢先生的中國通史、唐君毅先生的哲學概論、張丕介先生的經濟學，崔書琴先生的政治學等。除了偉晴街的教室外，又在附近砲台街租用一層樓作為學生宿舍，錢先生亦在這宿舍內住宿。亞洲文商專科夜校只辦了半年，劉尚義先生便退出，經濟失去了支持。其時幸得王岳峯先生的慷慨相助，乃得於一九五○年三月在教育司署立案為日校，及改名為新亞書院，租用九龍深水埗桂林街六十一、六十三、六十五號三、四樓為校舍。三樓作辦公室及師生宿舍、四樓作為教室。改組後錢先生仍任校長、唐君毅先生任教務長，以及張丕介先生任總務長。書院就在這貧困情況下誕生。書院初設文史、哲學教育、經濟、商學、新聞社會、農學六系。農學系第一年開設後，因未能設立附屬農場，中途停辦。新聞社會系在第一年開設後，因校舍不敷，亦停辦。文史系系主任由錢穆先生兼任，哲教系系主任由唐君毅先生兼任，經濟學系系主任由張丕介先生兼任，而商學系系主任由楊汝梅先生擔任。新亞早年的教授，不乏享負盛名的學者，如曾為國民政府教育部高教司司長的吳俊升先生，是美國著名哲學家和教育家杜威（John Dewey, 1859-1952）的學生；教經濟的楊汝梅先生早已譽滿大陸金融界。書法家曾克耑、歷史學家左舜生、甲骨文專家董作賓、國學家饒宗頤、羅香林，等諸先生皆曾在新亞任教。然而新亞教授所領的薪酬極為微薄，僅及當時香港官立小學第二級以下的薪給，而且經常領不到薪水。學生們大多為大陸流亡來港的青年，繳不出學費。除了註冊生外，還有試讀生及旁聽生。學生有營養不良，以致患病的。當時書院也要照顧這些學生：或減免學費，以至為找醫生治療；書院不僱用工人，創行工讀制，一些學生被派負責校中雜務，獲少許津貼，也獲在校食宿。不少學生在學校天台上露宿。學校的物質條件雖極貧乏，但各位創辦人所懷抱的理想與熱情卻極熾盛，而「艱險奮進，困乏多情」的新亞精神也是在當時建立的，也最能表現在當年的師生身上。書院除了正規課程外，又每星期日晚舉行公開文化講座，每次講座俱座無虛席。文化講座持續了四、五年，共舉辦了一百五十五次。講者除錢、唐、張三位創辦人，其他知名的學者有董作賓、夏濟安、左舜生、林仰山、饒宗頤諸教授等，也有西方著名學者蒞校演講。因此這所簡陋的小書院從此聲名遠播，漸漸獲得各方面的推崇。由一九五○年開辦至一九五三年，是新亞經濟最困難的階段。開學個多月後，王岳峯先生的企業受到致命打擊，無法繼續支持新亞，經費來源斷絕。新亞當時從學生所收到的學費，只佔書院總開支的百分之二十，遠不足夠，只好如張丕介先生所形容的，學習「武訓」要有行乞辦學之精神。一方面錢校長到台籌募捐助，一方面教師暫緩領薪酬，四處張羅。一九五○年冬，錢先生赴台北募款見當時國民政府的蔣介石總統，得蔣答應自總統府辦公費中節省，每月支持新亞三千元。張丕介先生及唐君毅先生等，則勤於撰稿，拿稿費以補助書院，以至張丕介先生把夫人的首飾典當以支持新亞。一九五二年七月七日，新亞董事會成立，大律師趙冰先生任董事長及法律顧問。同年香港政府通令全港九私立學校必須到工商署辦理「有限公司」的商業登記。當時新亞同仁以新亞辦學宗旨豈為牟利，咸表反對。趙冰董事長向香港政府爭取豁免，經近一年的努力，終於獲香港政府批准，承認新亞書院為一純正的教育事業，為不牟利的私立學校。"
                    : "New Asia College was founded in 1949 at a time of extreme adversity by Mr. Ch’ien Mu and other scholars from mainland China. Their objective was to establish an educational institution which combines the essence of the scholarship of the Song and Ming academies and the tutorial system of Western universities. With humanism as its basis, the College also aimed to facilitate cultural exchanges between East and West and to promote peace and well-being of the human race.New Asia College began as the Asia Evening College of Arts and Commerce. When it was officially opened on 10 October 1949, it did not have a permanent campus, and three classrooms were rented for evening classes at Wah Nam Middle School on Wai Ching Street in Kowloon. The President was Mr .Ch’ien Mu. The courses, taught in three-hour evening sessions, were compulsory for all students, including “General History of China” taught by Mr.Ch’ien Mu, “Introduction to Philosophy” by Mr. Tang Chun-i, “Economics” by Mr. Tchang Pi-kai, and “Politics” by Mr. Tsui Shu-chin. Apart from the classrooms on Wai Ching Street, another flat was rented to accommodate Mr. Ch’ien and the students.Asia Evening College of Arts and Commerce operated for only half a year when it lost the financial support from Mr. Liu Shang-yi, who tendered his resignation. Fortunately, with the assistance from Mr. Wang Yueh-feng, the College managed to register as a day school with the Education Department, restructured, and changed its name to New Asia College in March 1950. The College then rented the second and the third floors of nos. 61, 63, 65 Kweilin Street in Sham Shui Po as the school premise. The second floor served as offices and dormitories for the staff and students, and the third floor were used as classrooms. Mr. Ch’ien remained as the College President, with Mr. Tang as Registrar, and Mr. Tchang as Comptroller. Under these difficult circumstances New Asia College was born. At the beginning it had six departments, namely Economics, Business, Agriculture, Language and History, Philosophy and Education, and Journalism and Sociology. After the first academic year, the Department of Agriculture was closed down as it was unable to set up an affiliated farm, and the Department of Journalism and Sociology followed suit due to space limitations. Besides their administrative duties, Mr. Ch’ien, Mr. Tang, and Mr. Tchang also took up concurrent posts as Department Chairs of Language and History, Philosophy and Education, and Economics respectively, while Mr. Yang Ju-mei headed the Department of Business.In its early years, New Asia College was blessed with a teaching team of renowned scholars, including Mr. Ou Tsuin-chen, former Secretary of Higher Education for the Ministry of Education of the Republic of China and student of the famous American philosopher and educator John Dewey, Mr. Yang Ju-mei, who was a household name in Chinese financial circles, calligrapher Tseng K’o-tuan, historian Tso Shun-sheng, oracle bone expert Tung Tso-pin, litterateur Hsia Tsi-an, sinologists Jao Tsung-i and Lo Hsiang-lin and others. The teachers were offered only a modest salary, equivalent to that of a level-2 teacher in a Hong Kong government primary school, and their pay often fell in arrears. Most of the students had fled from the mainland and could not afford to pay tuition fees. Besides regular students, there were also probationary students and auditors. Many students suffered from malnutrition and became sick. At the time the College also took on the responsibility of looking after the students. It offered reduced or free tuition to them and even looked for doctors to care for them when they became sick. The College did not hire any workers, and some students were offered subsidies and free room and board for doing some caretaking work. Many students had to sleep on the roof in the open air. Despite a shortage of resources, the ambition and passion of the College founders never faltered. The New Asia Spirit “Starved is my flesh, Forged is my soul” was laid down in the College anthem back in those days, and was fully reflected in the efforts by the students and teachers at that time. In addition to regular courses, the College also hosted public cultural seminars every Sunday evening. More than 155 seminars were held in four years, all of which were fully packed with enthusiastic audiences. The seminars featured, in addition to the three College founders, a number of prominent professors as speakers, such as Tung Tso-pin, Hsia Tsi-an, Tso Shun-sheng, Frederick Sequier Drake, Jao Tsung-i and many visiting scholars from the West. It was through these seminars that the College of modest beginnings gradually acquired its reputation and prestige.1950–1953 were the most difficult years for the College. A few months after the first semester started, Mr. Wang Yueh-feng’s business suffered tremendous losses and he could no longer support the College, which soon became financially challenged as tuition fees represented only 20% of the budget. The College adopted what Mr. Tchang Pi-kai described as the spirit of the legendary Wu Xun, who supported education through begging on the street. To raise funds, Mr. Ch’ien went to Taiwan while the teachers agreed to suspend their pay. In the winter of 1950, Mr. Ch’ien met with Chiang Kai-shek, then President of the Republic of China, in Taipei, and he promised to donate a monthly stipend of HKD\$3,000 to the College from the operating budget of his presidential office. Mr. Tchang and Mr. Tang frequently wrote in local newspapers and donated their royalty payments; Mr. Tchang even pawned his wife’s jewelry to help with the College’s finances.The New Asia Board of Governors was incorporated on 7 July 1952. Mr. Vermier Y. Chiu, a barrister, was the chairman and legal advisor. In the same year, the Hong Kong Government stipulated that all private schools must register as a “limited company” with the Commerce and Industry Department. However, all the New Asia College staff objected to business registration, as they considered that the College’s goal was education, not financial gain. Mr. Chiu fought for exemption and succeeded after a year of negotiation with the Government—the College was duly recognized as an educational enterprise and a nonprofit private school.")),
            Container(child: Image.asset("images/history2.jpg")),
            //資料二
            Container(
                child: Text((language == "Chinese")
                    ? "自一九五二年以後，新亞的教育理想漸獲社會的同情與贊助。其中贊助最有力的是美國雅禮協會。一九五三年，雅禮協會派盧鼎教授來港。他極贊同新亞的教育理想，乃於一九五四年開始與新亞合作。除美國雅禮協會外，還有美國亞洲協會、美國哈佛燕京學社、洛克斐勒基金會、英國文化協會及香港孟氏教育基金會等，都曾對新亞書院的發展提供資助。新亞自獲各方援助後，乃於一九五三年秋在九龍太子道成立研究所，購置圖書。翌年，在九龍城嘉林邊道租一校舍，學生分於嘉林邊道及桂林街兩處上課。一九五六年，獲美國福特基金會捐建的農圃道第一期校舍落成，九月，遷入新校址，於是新亞踏入一新階段。新亞第二期校舍於一九六○年十一月落成，建築費全由雅禮協會捐贈。自第二期校舍建成，才得以擴設理學院；第三期校舍落成於一九六三年四月，建築費由香港政府撥助。自此期校舍落成，新亞始有大禮堂。"
                    : "Since 1952, the College’s educational ideals started to gain support, and sponsorship began to roll in from different sources. The Yale-in-China Association was the most important patron in the early days. In 1953, it sent Dr. Harry R. Rudin to Hong Kong as its representative. As he fervently embraced the College’s educational goals, the Yale-in-China Association and the College began their cooperation in 1954. The College also received supports from other educational institutions and foundations, notably the Asia Foundation, the Harvard-Yenching Institute, the Rockefeller Foundation, the British Council and the Mencius Foundation. With all these supports coming in, the College set up the Institute of Advanced Chinese Studies on Prince Edward Road in the autumn of 1953 and started to build up its library collection. In the following year, the College rented another premise on Grampian Road in Kowloon City in addition to the Kweilin Street flats. Thanks to the support of the Ford Foundation, a new campus was built on Farm Road. The first phase was finished in September 1956, and this development turned a new page in the history of the College. The second phase, wholly sponsored by the Yale-in-China Association, was completed in November 1960. With the completion of the second phase, a new Faculty of Science was established. The third phase, financed by the Hong Kong Government, was finished in April 1963, and it equipped the College with its first auditorium.")),
            Container(child: Image.asset("images/history3.jpg")),
            //資料三
            Container(
                child: Text((language == "Chinese")
                    ? "一九五九年，新亞接受香港政府的建議，改為專上學院，參加統一文憑考試，同時接受香港政府的補助。一九六三年，香港中文大學成立，由崇基學院、新亞書院、聯合書院組成。新亞成為成員書院，一九七三年遷入沙田馬料水的香港中文大學以迄至今。新亞書院遷入沙田以後，仍繼承傳統，每年均舉辦多項學術文化活動，包括錢賓四先生學術文化講座、余英時先生歷史講座、許讓成藝術交流計劃、亞洲聯合財務訪問學人計劃、及龔雪因先生訪問學人計劃等，以推動文化發展。此外，新亞書院最早出版的刊物《新亞校刊》創刊於一九五二年六月，直至一九五八年五月因《新亞生活》雙周刊創刊而停止，雙周刊也於一九七三年改為月刊，這份刊物已超逾五十年的歷史，它主要刊載書院的重要講辭、師生文章、學校動態，以及師生生活情況。可說是新亞的一面鏡子。另外，新亞於一九五九年至一九七七年，出版了十九期《新亞書院學術年刊》，後於一九七八年更名為《新亞書院學術集刊》，還有錢賓四講座系列的專著和其他專書。至於學生的課外活動則由學生會及其屬會自由組織，由新亞書院津貼經費如新亞國樂會（成立於一九六三年）、新亞國術會（成立於一九七九年）等。新亞的學生人數也不斷增加，由一九四九年的四十二人，至目前的三千多人，此可反映新亞書院的發展的一斑。."
                    : "In 1959, the College accepted a proposal from the Hong Kong Government to become a post-secondary institution. It also started receiving government subsidies and participated in the Joint Certificate of Education Examination. In 1963, The Chinese University of Hong Kong was founded. Together with Chung Chi College and United College, New Asia College became one of the constituent colleges ofThe Chinese University of Hong Kong and moved to its present campus in Shatin in 1973.Since moving to Shatin, New Asia College has been carrying on its tradition of organizing academic and cultural activities every year to promote cultural development, including the Ch’ien Mu Lecture in History and Culture, the Yu Ying-Shih Lecture in History, the Hui Yeung Shing Exchange Programme in Fine Arts, the United Asia Finance Visiting Scholars Programme, and the New Asia S. Y. Chung Visiting Fellows Programme.The first College publication New Asia College Journal was published in June 1952, and in May 1958, it was replaced by the biweekly New Asia Life, which then became a monthly in 1973. New Asia Life, a mirror of life at the College, has over fifty years of history, featuring important speeches, articles by teachers and students, reports on school events and the activities of college members. In addition to New Asia Life, nineteen issues of New Asia College Academic Annual were published between 1959 and 1977; it was renamed New Asia College Academic Bulletin in 1978. Other College publications include the monograph series of Ch’ien Mu Lectures in History and Culture and books on various subjects.Extracurricular activities are organized by the Student Union and other student societies. The College subsidizes the activities and the student societies run by them, they include the New Asia College Chinese Music Society (founded in 1963) and the New Asia College Martial Arts Society (founded in 1979). The number of students has increased from 42 in 1949 to the present 3,000, which is a good indication of the development of New Asia College over the past decades."))
          ],
        ),
      ),
    );
  }
}
