import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class Cricket extends StatefulWidget {
  @override
  _CricketState createState() => _CricketState();
}

class _CricketState extends State<Cricket> {
  int correct = 0;
  int index = 0;
  int totalques = 0;
  var rng = Random();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = args['name'] ?? "User";
    final List<Map<String, dynamic>> ques = [
      {
        "ques": "By which country cricket was discovered?",
        "sol": {
          "a": "India",
          "b": "Australia",
          "c": "England",
          "d": "None of these",
        },
        "correct": "3",
      },
      {
        "ques": "By which country cricket was discovered?",
        "sol": {
          "a": "India",
          "b": "Australia",
          "c": "England",
          "d": "None of these",
        },
        "correct": "3",
      },
      {
        "ques": "How many players play from a single team?",
        "sol": {"a": "10", "b": "12", "c": "9", "d": "11"},
        "correct": "4",
      },
      {
        "ques": "How many players play from a single match?",
        "sol": {"a": "20", "b": "22", "c": "24", "d": "18"},
        "correct": "2",
      },
      {
        "ques": "How many players are actually playing on filed?",
        "sol": {"a": "11", "b": "13", "c": "14", "d": "12"},
        "correct": "2",
      },
      {
        "ques": "How many umpires are there on filed?",
        "sol": {"a": "2", "b": "1", "c": "3", "d": "4"},
        "correct": "1",
      },
      {
        "ques": "How many umpires are there in match?",
        "sol": {"a": "2", "b": "3", "c": "4", "d": "5"},
        "correct": "2",
      },
      {
        "ques": "Which one is not considered as the matck officials?",
        "sol": {
          "a": "On filed Umpire",
          "b": "Camera man",
          "c": "TV umpire",
          "d": "Match refree",
        },
        "correct": "2",
      },
      {
        "ques": "When was first time cricket played?",
        "sol": {"a": "1639 Nehru", "b": "1721", "c": "1621", "d": "1611"},
        "correct": "4",
      },
      {
        "ques": "Most centuries in Cricket game by a single player till now?",
        "sol": {
          "a": "Virat Kohli",
          "b": "Sachin Tendulkar",
          "c": "Ricky Ponting",
          "d": "Brian Lara",
        },
        "correct": "2",
      },
      {
        "ques":
            "Most centuries in Cricket game by a single player after Sachin recently?",
        "sol": {
          "a": "Virat Kohli",
          "b": "Sachin Tendulkar",
          "c": "Ricky Ponting",
          "d": "Brian Lara",
        },
        "correct": "1",
      },
      {
        "ques": "In which Olympics Cricket was included in it?",
        "sol": {
          "a": "1900 and 1904",
          "b": "1896 and 1900",
          "c": "1892 and 1896",
          "d": "1900 and 1892",
        },
        "correct": "2 ",
      },
      {
        "ques": "Which are the part of bat?",
        "sol": {"a": "Handle", "b": "Blade", "c": "both", "d": "None"},
        "correct": "3",
      },
      {
        "ques": "When was first ODI match played?",
        "sol": {"a": "1974", "b": "1983", "c": "1975", "d": "1971"},
        "correct": "4 ",
      },
      {
        "ques": "Among which teams first ODI was played?",
        "sol": {
          "a": "Australia and India",
          "b": "India and England",
          "c": "England and West Indies",
          "d": "Australia and England",
        },
        "correct": "4",
      },
      {
        "ques": "First ODI was played in which cricket ground?",
        "sol": {
          "a": "Melbourne Cricket Ground",
          "b": "Narendra Modi Stadium",
          "c": "Perth Stadium",
          "d": "Eden Gardens",
        },
        "correct": "1",
      },
      {
        "ques": "Who won the 2015 World cup?",
        "sol": {
          "a": "India",
          "b": "Australia",
          "c": "England",
          "d": "West Indies",
        },
        "correct": "2",
      },
      {
        "ques": "Who won the 2019 World cup?",
        "sol": {
          "a": "England",
          "b": "Australia",
          "c": "India",
          "d": "West Indies",
        },
        "correct": "1",
      },
      {
        "ques": "Who is hosting 2023 World cup?",
        "sol": {
          "a": "India",
          "b": "Australia",
          "c": "England",
          "d": "West Indies",
        },
        "correct": "1 ",
      },
      {
        "ques": "When did India won first world cup trophy?",
        "sol": {"a": "1974", "b": "1983", "c": "1975", "d": "1979"},
        "correct": "2  ",
      },
      {
        "ques": "Who won the first ever 50 overs Cricket World cup?",
        "sol": {
          "a": "Australia",
          "b": "England",
          "c": "West Indies",
          "d": "India",
        },
        "correct": "3",
      },
      {
        "ques": "When was first world cup held?",
        "sol": {"a": "1974", "b": "1983", "c": "1975", "d": "1979"},
        "correct": "3 ",
      },
      {
        "ques": "Who hosted first ever World Cup?",
        "sol": {
          "a": "Australia",
          "b": "England",
          "c": "West Indies",
          "d": "India",
        },
        "correct": "2 ",
      },
      {
        "ques":
            "India played first ever Test match against which International team?",
        "sol": {
          "a": "Australia",
          "b": "England",
          "c": "West Indies",
          "d": "South Africa",
        },
        "correct": "2 ",
      },
      {
        "ques":
            "In which year India played its first International test match?",
        "sol": {"a": "1928", "b": "1940", "c": "1934", "d": "1932"},
        "correct": "4",
      },
      {
        "ques": "In which year India played its first ODI match?",
        "sol": {"a": "1974", "b": "1983", "c": "1975", "d": "1979"},
        "correct": "1",
      },
      {
        "ques": "Against which team India played first ODI match?",
        "sol": {
          "a": "Australia",
          "b": "West Indies",
          "c": "England",
          "d": "South Africa",
        },
        "correct": "3",
      },
      {
        "ques": "When did India played its first International T20 match?",
        "sol": {"a": "2005", "b": "2006", "c": "2007", "d": "2008"},
        "correct": "2",
      },
      {
        "ques": "India played its first T20 match against which team?",
        "sol": {
          "a": "South Africa",
          "b": "England",
          "c": "Australia",
          "d": "Pakistan",
        },
        "correct": "1",
      },
      {
        "ques": "Biggest cricket stradium cpacity wise?",
        "sol": {
          "a": "Melbourne Cricket Ground",
          "b": "Narendra Modi Stadium",
          "c": "Perth Stadium",
          "d": "Eden Gardens",
        },
        "correct": "2",
      },
      {
        "ques":
            "Indian batsman to have highest strike rate with atleast 70 matches?",
        "sol": {
          "a": "Saurav Ganguly",
          "b": "Sunil Gavaskar",
          "c": "Rahul Dravid",
          "d": "Virendra Sehwag",
        },
        "correct": "4",
      },
      {
        "ques": "Indian to have most runs across all formats?",
        "sol": {
          "a": "Saurav Ganguly",
          "b": "Sachin tendulkar",
          "c": "Rahul Dravid",
          "d": "Virat Kohli",
        },
        "correct": "2",
      },
      {
        "ques":
            "Indian to have most runs across all formats after Scahin Tendulkar?",
        "sol": {
          "a": "Saurav Ganguly",
          "b": "Sunil Gavaskar",
          "c": "Rahul Dravid",
          "d": "Virat Kohli",
        },
        "correct": "3",
      },
      {
        "ques": "Indian to have most wickets across all formats?",
        "sol": {
          "a": "Jawagal Shreenath",
          "b": "Ravichandran Ashwin",
          "c": "Harbhajan Singh",
          "d": "Anil Kumbhle",
        },
        "correct": "4",
      },
      {
        "ques":
            "Indian to have most wickets across all formats after Anil Kumbhle?",
        "sol": {
          "a": "Jawagal Shreenath",
          "b": "Ravichandran Ashwin",
          "c": "Harbhajan Singh",
          "d": "Ashok Dinda",
        },
        "correct": "2",
      },

      {
        "ques": "Highest test score by an Indian in Test match?",
        "sol": {
          "a": "Karun Nair",
          "b": "Sachin tendulkar",
          "c": "Virendra Sehwag",
          "d": "Virat Kohli",
        },
        "correct": "3",
      },

      {
        "ques": "Along with Virendra Sehwag who has scored 300+ in test?",
        "sol": {
          "a": "Karun Nair",
          "b": "Sachin tendulkar",
          "c": "Rahul Dravid",
          "d": "Virat Kohli",
        },
        "correct": "1",
      },

      {
        "ques": "Which Indian has taken 10 wickets in an Test Inning?",
        "sol": {
          "a": "Jawagal Shreenath",
          "b": "Ravichandran Ashwin",
          "c": "Harbhajan Singh",
          "d": "Anil Kumbhle",
        },
        "correct": "4",
      },

      {
        "ques": "How many Innings are there in Test Match?",
        "sol": {"a": "0", "b": "4", "c": "1 ", "d": "2"},
        "correct": "2",
      },

      {
        "ques": "How many innings a team bat maximum times in a test match?",
        "sol": {"a": "0", "b": "4", "c": "1 ", "d": "2"},
        "correct": "4",
      },

      {
        "ques":
            "Recently a new ball is introduces in a test match after how many overs?",
        "sol": {"a": "80", "b": "60", "c": "50", "d": "100"},
        "correct": "1",
      },

      {
        "ques": "Which score in cricket is called Nelson?",
        "sol": {"a": "100", "b": "99", "c": "111", "d": "123"},
        "correct": "3",
      },

      {
        "ques": "Australia has won Cricket world cup how many times?",
        "sol": {"a": "5", "b": "4", "c": "3", "d": "6"},
        "correct": "1",
      },

      {
        "ques": "In which world cup 60 over format changed to 50 overs format?",
        "sol": {"a": "1983", "b": "1991", "c": "1995", "d": "1987"},
        "correct": "4",
      },

      {
        "ques": "First T20 World cup was held in which year?",
        "sol": {"a": "2006", "b": "2009", "c": "2007", "d": "2005"},
        "correct": "3",
      },

      {
        "ques": "Who won first T20 world cup?",
        "sol": {
          "a": "India",
          "b": "West Indies",
          "c": "England",
          "d": "Australia",
        },
        "correct": "1",
      },

      {
        "ques": "Under whose captaincy India won first T20 world cup?",
        "sol": {
          "a": "Virat Kohli",
          "b": "Sachin Tendulkar",
          "c": "Rohit Sharma",
          "d": "Mahendra Singh Dhoni",
        },
        "correct": "4",
      },

      {
        "ques": "Under whose captaincy India won first ODI world cup?",
        "sol": {
          "a": "Kapil Dev",
          "b": "Saurav Gabguly",
          "c": "VVS Laxman",
          "d": "Sunil Gavaskar",
        },
        "correct": "1",
      },

      {
        "ques": "Fastest century in ODI format by an Indian?",
        "sol": {
          "a": "Rohit SHarma",
          "b": "Rishab Pant",
          "c": "VIrat Kohli",
          "d": "KL Rahul",
        },
        "correct": "3",
      },

      {
        "ques": "Fastest century in T20 format by an Indian?",
        "sol": {
          "a": "Rohit Sharma",
          "b": "Surya Kumar Yadav",
          "c": "Sursh Raina",
          "d": "KL Rahul",
        },
        "correct": "1",
      },

      {
        "ques":
            "Name the first player to hit a six on first ball of the test inning?",
        "sol": {
          "a": "Devil Convay",
          "b": "Virendra Sehwag",
          "c": "Brendom Mucclum",
          "d": "Chris Gyale",
        },
        "correct": "4",
      },

      {
        "ques": "Weight of cricket ball is?",
        "sol": {
          "a": "163 gram",
          "b": "162 gram",
          "c": "161 gram",
          "d": "164 gram",
        },
        "correct": "1",
      },
    ];

    checkandnext(String st) {
      if (totalques == 10) {
        Navigator.pushNamed(
          context,
          '/resultpage',
          arguments: {'score': correct.toString(), 'name': name},
        );
      }
      int randomNumber = rng.nextInt(5);
      setState(() {
        if (ques[index]['correct'] == st) {
          correct++;
        }
        index += randomNumber + 1;
        totalques++;
      });
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          elevation: 0,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 56, 1, 1),
              const Color.fromARGB(255, 47, 0, 65),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        "Welcome $name",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Your current score is $correct",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Question : ${ques[index]['ques']}",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 250, 66, 10),
                        ),
                        elevation: WidgetStatePropertyAll(6.5),
                        shadowColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 18, 37, 37),
                        ),
                        fixedSize: WidgetStatePropertyAll(Size(340, 50)),
                      ),
                      onPressed: () {
                        checkandnext('1');
                      },
                      child: Text(
                        "A : ${ques[index]["sol"]?['a']}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(6.5),
                        shadowColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 18, 37, 37),
                        ),
                        fixedSize: WidgetStatePropertyAll(Size(340, 50)),
                      ),
                      onPressed: () {
                        checkandnext('2');
                      },
                      child: Text(
                        "B : ${ques[index]["sol"]?['b']}",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 74, 244, 40),
                        ),
                        elevation: WidgetStatePropertyAll(6.5),
                        shadowColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 18, 37, 37),
                        ),
                        fixedSize: WidgetStatePropertyAll(Size(340, 50)),
                      ),
                      onPressed: () {
                        checkandnext('3');
                      },
                      child: Text(
                        "C : ${ques[index]["sol"]?['c']}",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(6.5),
                        shadowColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 18, 37, 37),
                        ),
                        fixedSize: WidgetStatePropertyAll(Size(340, 50)),
                      ),

                      onPressed: () {
                        checkandnext('4');
                      },
                      child: Text(
                        "D : ${ques[index]["sol"]?['d']}",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 110),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 0, 4, 30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Finish QUIZ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 4, 176, 255),
                    fontSize: 36,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
