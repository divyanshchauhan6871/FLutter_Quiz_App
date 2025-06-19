// 44
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class Mahabharat extends StatefulWidget {
  @override
  _MahabharatState createState() => _MahabharatState();
}

class _MahabharatState extends State<Mahabharat> {
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
        "ques": "Who were the wife of Maharaja Vichitraveer?",
        "sol": {
          "a": "Both",
          "b": "Ambika",
          "c": "Ambalika",
          "d": "All of these",
        },
        "correct": "1",
      },
      {
        "ques": "Who became the reason for the death of Pitahmah Bheeshma?",
        "sol": {
          "a": "Amba",
          "b": "Ambika",
          "c": "Ambalika",
          "d": "All of these",
        },
        "correct": "1",
      },
      {
        "ques": "By which name Bhagwan Krishna was referred?",
        "sol": {
          "a": "Vasudev",
          "b": "Yashoda-nandna",
          "c": "Devki-nandan",
          "d": "All of these",
        },
        "correct": "4",
      },
      {
        "ques": "Where were Lord Krishna born?",
        "sol": {"a": "Gokul", "b": "Dwarka", "c": "Mathura", "d": "Vrindavan"},
        "correct": "3",
      },
      {
        "ques":
            "While Vasudev ji crossed Yamuna, who helped him cross the Yamuna river?",
        "sol": {
          "a": "Bhagwan Shankar",
          "b": "Bhagwan Sheshnag",
          "c": "Bhagwan Brahma",
          "d": "All of these",
        },
        "correct": "2",
      },
      {
        "ques": "Who was the wife of Maharaj Dhritrashtra?",
        "sol": {
          "a": "Mata Gandhari",
          "b": "Mata Kunti",
          "c": "Mata Shakuntala",
          "d": "Mata Satyavati",
        },
        "correct": "1",
      },
      {
        "ques": "Who was the wife of Maharaj Pandu?",
        "sol": {"a": "Mata Madri", "b": "Mata Kunti", "c": "Both", "d": "None"},
        "correct": "3",
      },
      {
        "ques": "How many sons did Maharaja Dhritrashtra have?",
        "sol": {"a": "104", "b": "100", "c": "102", "d": "101"},
        "correct": "3",
      },
      {
        "ques": "How many sons did Maharaja Pandu have?",
        "sol": {"a": "3", "b": "4", "c": "5", "d": "6"},
        "correct": "3",
      },
      {
        "ques": "How many sons did Mata Kunti have?",
        "sol": {"a": "3", "b": "4", "c": "5", "d": "6"},
        "correct": "2",
      },
      {
        "ques": "Mata Shabri told Lord Ram to meet whom?",
        "sol": {"a": "3", "b": "4", "c": "1", "d": "2"},
        "correct": "4",
      },
      {
        "ques": "Who was the elder in the given names?",
        "sol": {"a": "Bheem", "b": "Duryodhan", "c": "Yudhister", "d": "Arjun"},
        "correct": "3",
      },
      {
        "ques": "Who was the elder in the given names?",
        "sol": {"a": "Bheem", "b": "Duryodhan", "c": "Dushasan", "d": "Arjun"},
        "correct": "1",
      },
      {
        "ques": "Who was the elder in the given names?",
        "sol": {"a": "Nakul", "b": "Duryodhan", "c": "Yudhister", "d": "Arjun"},
        "correct": "2",
      },
      {
        "ques": "From which element did Mata Dropadi born?",
        "sol": {"a": "Vayu", "b": "Jal", "c": "Agni", "d": "Yagya"},
        "correct": "4",
      },
      {
        "ques": "Yudhister ji was the son of which Dev?",
        "sol": {
          "a": "Dharma Dev",
          "b": "Vayu Dev",
          "c": "Indra Dev",
          "d": "Varun Dev",
        },
        "correct": "1",
      },
      {
        "ques": "Bheem ji was the son of which Dev?",
        "sol": {
          "a": "Dharma Dev",
          "b": "Vayu Dev",
          "c": "Indra Dev",
          "d": "Varun Dev",
        },
        "correct": "2",
      },
      {
        "ques": "Arjun ji was the son of which Dev?",
        "sol": {
          "a": "Dharma Dev",
          "b": "Vayu Dev",
          "c": "Indra Dev",
          "d": "Varun Dev",
        },
        "correct": "3",
      },
      {
        "ques": "For which astra and shastra Yudister ji was famous?",
        "sol": {"a": "Bhala", "b": "Gada", "c": "Dhanush-baan", "d": "none"},
        "correct": "1",
      },
      {
        "ques": "For which astra and shastra Bheem ji was famous?",
        "sol": {"a": "Bhala", "b": "Gada", "c": "Dhanush-baan", "d": "none"},
        "correct": "2",
      },
      {
        "ques": "For which astra and shastra Arjun ji was famous?",
        "sol": {"a": "Bhala", "b": "Gada", "c": "Dhanush-baan", "d": "none"},
        "correct": "3",
      },
      {
        "ques": "What was the relation of Duryodhan and Karn?",
        "sol": {"a": "Shishya", "b": "Guru", "c": "Brother", "d": "Friend"},
        "correct": "4",
      },
      {
        "ques": "What was common in Angraj Karna and Ganga putra Bheeshma?",
        "sol": {
          "a": "Same Guru",
          "b": "Same Kul",
          "c": "Same age",
          "d": "Same skills",
        },
        "correct": "1",
      },
      {
        "ques": "Ghatothkach was son of whom?",
        "sol": {"a": "Bheem", "b": "Duryodhan", "c": "Yudhister", "d": "Arjun"},
        "correct": "1",
      },
      {
        "ques": "Abhimanyu was son of whom?",
        "sol": {"a": "Bheem", "b": "Duryodhan", "c": "Yudhister", "d": "Arjun"},
        "correct": "4",
      },
      {
        "ques": "Where did Pandavas hide themselves during their Agyat varsh?",
        "sol": {"a": "Virat", "b": "Ang", "c": "Dwarka", "d": "Indraprastha"},
        "correct": "1",
      },
      {
        "ques": "By whom Devantak was killed?",
        "sol": {
          "a": "Lord Hanuman ji",
          "b": "Maharaja Sugreev",
          "c": "Senapati Neel",
          "d": "Senapati Nal",
        },
        "correct": "1",
      },
      {
        "ques": "Who killed Guru Dron Acharya?",
        "sol": {
          "a": "Maharaja Dropad",
          "b": "Bheem",
          "c": "Drishtadyumna",
          "d": "Arjun",
        },
        "correct": "3",
      },
      {
        "ques": "With whom was Krishna playing the role of sarthi?",
        "sol": {"a": "Arjun", "b": "Bheem", "c": "Yudhiter", "d": "None"},
        "correct": "1",
      },
      {
        "ques":
            "How many horses were there in the chariot of Arjun and Bhagwan Krishna?",
        "sol": {"a": "2", "b": "1", "c": "4", "d": "None of these"},
        "correct": "3",
      },

      {
        "ques": "Events Related to Mahabharata happened in which Yuga?",
        "sol": {
          "a": "Sat Yuga",
          "b": "Treta Yuga",
          "c": "Dwapar Yuga",
          "d": "Kali Yuga",
        },
        "correct": "3",
      },
      {
        "ques": "Who wrote Mahabharata?",
        "sol": {
          "a": "Shri Ganesh ji",
          "b": "Maharishi Ved Vyas ji",
          "c": "Maharishi Valmiki ji",
          "d": "Tulsi Das ji",
        },
        "correct": "1",
      },
      {
        "ques": "Who didctated epic Mahabharata to Ganesh ji?",
        "sol": {
          "a": "Matang Rishi ji",
          "b": "Maharishi Ved Vyas ji",
          "c": "Maharishi Valmiki ji",
          "d": "Lord Krishna",
        },
        "correct": "2",
      },
      {
        "ques": "Who was the wife of Maharaja Shantanu?",
        "sol": {
          "a": "Mandvi ji",
          "b": "Yagyasaini ji",
          "c": "Mandodri ji",
          "d": "Shakuntala ji",
        },
        "correct": "4",
      },
      {
        "ques": "How many sons did Maharaja Bharat have?",
        "sol": {"a": "8", "b": "9", "c": "10", "d": "11"},
        "correct": "2",
      },
      {
        "ques": "How many days did Mahabharat was fought?",
        "sol": {"a": "15", "b": "16", "c": "17", "d": "18"},
        "correct": "4",
      },
      {
        "ques": "How many children did Mata Ganga leave in the Ganga River?",
        "sol": {"a": "8", "b": "9", "c": "10", "d": "11"},
        "correct": "1",
      },
      {
        "ques": "Who was the second wife of Maharaj Bharat?",
        "sol": {
          "a": "Ganga Maiya",
          "b": "Mata Yagyasaini",
          "c": "Mata Satyavati",
          "d": "None",
        },
        "correct": "3",
      },

      {
        "ques": "After seeing whom Pitahmaah Bheesham did not attack?",
        "sol": {
          "a": "Arjun",
          "b": "lord Laksmana",
          "c": "Yudhister",
          "d": "Shikhandi",
        },
        "correct": "4",
      },

      {
        "ques": "Who are the chiranjeevi since the Dwapar yuga?",
        "sol": {
          "a": "Ved Vyas ji",
          "b": "Ashwatthama",
          "c": "both",
          "d": "None",
        },
        "correct": "3",
      },

      {
        "ques": "Who are the chiranjeevi since the Dwapar yuga?",
        "sol": {
          "a": "Ved Vyas ji",
          "b": "Ashwatthama",
          "c": "both",
          "d": "None",
        },
        "correct": "3",
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
      int randomNumber = rng.nextInt(3);
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
              const Color.fromARGB(255, 17, 25, 53),
              const Color.fromARGB(255, 47, 0, 65),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: const Color.fromARGB(137, 0, 9, 91),
                  //     width: 1.7,
                  // ),
                  // ),
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
              SizedBox(height: 50),
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
