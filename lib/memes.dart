import 'package:flutter/material.dart';
import 'package:quotes_app/quotespage.dart';
import 'package:quotes_app/qoute.dart';
import 'package:quotes_app/pages/MemeCard.dart';

class MemesLol extends StatefulWidget {
  const MemesLol({super.key});

  @override
  State<MemesLol> createState() => _MemesLolState();
}



class _MemesLolState extends State<MemesLol> {
  List<Meme> memes = [
    Meme(text: "When you are single, you see happy couples everywhere, but when you get married, you see happy singles everywhere."
        " This witchcraft is difficult to explain.",
        author: "Unknown"),
    Meme(text: "Instead of feeding the 5000 hungry people like what Jesus did, today's Prophets are fed by the 5000 hungry people",
        author: "Unknown"),
    Meme(text: "Mother: Jane, tell me the truth. How did you get pregnant?\nJane: It was an accident mom.\nMother: You mean you were crossing "
        "the road and a penis from no where eventually hit you?",
        author: "Unknown"),
    Meme(text: "When the missionaries arrived, the Africans had the land and the missionaries had the Bible.They taught us how to pray with "
        "our eyes closed. When we opened them,they had the land and we had the Bible.",
        author: "Unknown"),
    Meme(text: "Your pastor has six bodyguards and you only have his sticker on your car to protect you, my friend is your brain paining you?",
        author: "Unknown"),
    Meme(text: "Neighbors will always say they saw the girl you brought home last night "
        "but they will never see the thief who stole at your place even during the day",
        author: "Unknown"),
    Meme(text: "WEDDING IN UK\nInvited guests : 120\nAttendance : 70\nGifts : 70\nMissing items : 0\n\n"
        "WEDDING AFRICA\nInvited guests : 200\nAttendance : 4,256\nGifts : 28\nMissing items : 78 plates,"
        "23 litres of oil, 56 glasses, 18 crates of beer",
        author: "Unknown"),
    Meme(text: "So Africa logic tells us to leave a cow of 1.8M outside at night and take the chicken of 30K inside",
        author: "Unknown"),
    Meme(text: "Smart phone can disturb ... I've just received a notification that my Bible app needs an update...\n"
        "For what now? Has Adam eaten another apple?",
        author: "Unknown"),
    Meme(text: "My neighbour just finished writing a book on 'HOW TO MAKE MONEY'. Now he needs money to publish it, I told him to read the book",
        author: "Unknown"),
    Meme(text: "My sister stop asking people what they do for a living, they will lie. Just take them to bed and count how many round they can go.\n"
        "1round - rich guy\n2rounds - doing well in life\n3rounds - unemployed\n4rounds - broke as hell",
        author: "Robert Mugabe"),
    Meme(text: "This generation thinks that marriage is all about sex until they enter inside and bills won't allow the man to have an "
        "erection for six months",
        author: "Unknown"),
    Meme(text: "God is the best investor ever. he took a rib from a man and created a loud speaker.",
        author: "Unknown"),
    Meme(text: "King Solomon had 700 wives and cheated on them with 300 concubines and God still love him. Your husband cheated on you one one woman "
        "and we can't have peace. My sister keep calm and read the Bible",
        author: "Robert Mugabe"),
    Meme(text: "Education for Married Men\nWhen you are walking with your wife, and a beautiful girl walking towards you. If your wife "
        "asks 'Isn't she beautiful?'\nThe answer 'Yes' is wrong. The answer 'NO' too is wrong. The correct answer is 'Who?'",
        author: "Unknown"),
    Meme(text: "Virginity is the best wedding gift any man would receive from his newly wedded wife, but lately, there is nothing like than "
        "any longer because by the time it will have already been given out as a birthday gift, token of appreciation, job assurance"
        " examination marking schemes and for taxi fare!",
        author: "Robert Mugabe"),
    Meme(text: "Girls take care of yourselves!!! Some men will use, use your body, damage your reputation then finally marry a beautiful wife "
        "and become born again, and as if that's not enough, use you as a testimony in church!",
        author: "Unknown"),
    Meme(text: "So, you had sex with him because you both had chemistry, when biology occurs, I hope he has the economics to take care of you. Enjoy.",
        author: "Unknown"),
    Meme(text: "If all women in the world decide to pause sex until the cure for AIDS is found, men will find the cure within 30 days",
        author: "Unknown"),
    Meme(text: "The Meaning of Marriage\n\nWife: if you were my husband, I'd poison your coffee.\nMan: If you were my wife,I'd gladly drink it!\n"
        "Marriage is the only war where you sleep with your enemy",
        author: "Unknown"),
    Meme(text: "Chemist: Do you know why oil fry things and water boil things? I won't tell, because you saw Chemistry and went ahead to to study"
        " Economics. \nEconomist: Do you know why a country has a money printing machine but yet borrow money from other countries? I won't tell you "
        "because you saw Economics but went for Chemistry",
        author: "Unknown"),
    Meme(text: "Technology Disaster!!!\nI was setting the voice recognition password of my mobile phone, a dog barked and ran away..\n"
        "I am still looking for the dog to unlock my phone.",
        author: "Unknown"),
    Meme(text: "Wife: Honey, am I chubby?\nHusband: No babe, I love you the way you are.\nWife: I'm hungry. Carry me to the fridge.\n"
        "Husband: Wait here. I'll carry the fridge to you",
        author: "Unknown"),
    Meme(text: "Impregnating a girl in Europe is so nice that her parents will even buy you a car.\nBut in Africa,the curses alone will change "
        "your destiny.",
        author: "Unknown"),
    Meme(text: "Church Notice\n\nPlease do not leave your purse, watch,handbag,mobile phone,wife, husband, girlfriend or boyfriend unattended. "
        "Others may think it's answer to their prayers",
        author: "Unknown"),
    Meme(text: "Teacher: Why are you praying inn class little Johnny?\nLittle Johnny: My mom taught me to always pray before going to sleep.",
        author: "Unknown"),
    Meme(text: "To those who watch my life and gossip about it, watch out! Season 2 is coming soon!",
        author: "Unknown"),
    Meme(text: "The world is funny, if the government finds diamonds or oil in your backyard it is a government property. But if they find drugs "
        "it is yours!",
        author: "Unknown"),
    Meme(text: "If his phone rings and he goes outside. Follow him, don't be lazy sister, help him find signals",
        author: "Unknown"),
    Meme(text: "God is the best investor ever. he took a rib from a man and created a loud speaker.",
        author: "Unknown"),
  ];

  Widget quoteTemplate(meme) {
    return MemeCard(meme: meme);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Memes",
        style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold, fontFamily: 'Georgia'),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),

      body:  SafeArea(
        child: ListView(
          children: [
            Column(
              children: memes.map((meme) {
                return quoteTemplate(meme);
              }).toList(),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
                children: [
                  Center(
                    child: Container(
                      width: 130,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const QuoteList()),
                          );
                        },
                        icon: Icon(Icons.navigate_before),
                        label: Text('Previous'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 130,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MemesLol()),
                          );
                        },
                        icon: Icon(Icons.navigate_next),
                        label: Text('Next'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        

            SizedBox(height: 50.0),
          ],
        ),
      ),




    );
  }
}
