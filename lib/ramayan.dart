// 50
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class Ramayan extends StatefulWidget {
  @override
  _RamayanState createState() => _RamayanState();
}

class _RamayanState extends State<Ramayan> {
  int correct = 0;
  int index = 0;
  int totalques = 0;
  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = args['name'] ?? "User";
    final List<Map<String, dynamic>> ques = [
      {
        "ques": "Events Related to Ramayan happened in which Yuga?",
        "sol": {
          "a": "Sat Yuga",
          "b": "Treta Yuga",
          "c": "Dwapar Yuga",
          "d": "Kali Yuga",
        },
        "correct": "Treta Yuga",
      },
      {
        "ques": "Maharaj Dashratha Had how many wife?",
        "sol": {"a": "2", "b": "4", "c": "3", "d": "5"},
        "correct": "3",
      },
      {
        "ques": "Who was first wife of Maharaj Dahsratha?",
        "sol": {
          "a": "Mata Kausalya",
          "b": "Mata Kaikeyi",
          "c": "Mata Sumitra",
          "d": "None",
        },
        "correct": "Mata Kausalya",
      },
      {
        "ques": "Who was second wife of Maharaj Dahsratha?",
        "sol": {
          "a": "Mata Kausalya",
          "b": "Mata Kaikeyi",
          "c": "Mata Sumitra",
          "d": "None",
        },
        "correct": "Mata Kaikeyi",
      },
      {
        "ques": "Who was third wife of Maharaj Dahsratha?",
        "sol": {
          "a": "Mata Kausalya",
          "b": "Mata Kaikeyi",
          "c": "Mata Sumitra",
          "d": "None",
        },
        "correct": "Mata Sumitra",
      },
      {
        "ques":
            "what was the name of family servant that made the Mata Kaikeyi mind diverted?",
        "sol": {"a": "Bimla", "b": "Kamla", "c": "Kiran", "d": "Manthara"},
        "correct": "Manthara",
      },
      {
        "ques": "Lord Ram was Avtar of whom?",
        "sol": {
          "a": "Lord Vishnu",
          "b": "Lord Shankar",
          "c": "Both",
          "d": "None of them",
        },
        "correct": "Lord Visnu, although Lord Ram is sampoorna Avtar",
      },
      {
        "ques": "Maharaj Dashratha had how many son",
        "sol": {"a": "2", "b": "3", "c": "4", "d": "5"},
        "correct": "4",
      },
      {
        "ques": "Which Rani of Maharaj Dashratha had 2 sons?",
        "sol": {
          "a": "Mata Kausalya",
          "b": "Mata Kaikeyi",
          "c": "Mata Sumitra",
          "d": "None",
        },
        "correct": "Mata Sumitra",
      },
      {
        "ques": "Among which pair who was brothers by same mother?",
        "sol": {
          "a": "Lord Ram and Lord Lakshmana",
          "b": "Lord Ram and Lord Bharat",
          "c": "Lord Bharat and Lord Shatrughna",
          "d": "Lord Lakshmana and Lord Shatrughna",
        },
        "correct": "Lord Lakshmana and Lord Shatrughna",
      },
      {
        "ques": "Whom took all four brothers to gurukul?",
        "sol": {
          "a": "Maharishi Bhardwaj",
          "b": "Maharishi Agast",
          "c": "Maharishi valmiki",
          "d": "Maharishi Vashishta",
        },
        "correct": "Maharishi Vashishta",
      },
      {
        "ques": "Who is aradhya bhagwan of Lord Ram?",
        "sol": {
          "a": "Lord Shankar",
          "b": "Lord Vishnu",
          "c": "Lord Brahma",
          "d": "none of these",
        },
        "correct": "Lord Shankar",
      },
      {
        "ques": "Lord Ram came to make people free from whom rule?",
        "sol": {
          "a": "Kartavirya Arjuna",
          "b": "Dashanan",
          "c": "Hiranyaksh",
          "d": "Hiranyakahsyap",
        },
        "correct": "Dashanan ",
      },
      {
        "ques": "For how many years Lord Ram needed to stay in forest?",
        "sol": {"a": "12", "b": "15", "c": "14", "d": "13"},
        "correct": "14",
      },
      {
        "ques": "Whom went to forest along with Lord Ram?",
        "sol": {
          "a": "Mata Sita",
          "b": "Lord Lakshmana",
          "c": "Both",
          "d": "None of them",
        },
        "correct": "Both",
      },
      {
        "ques": "Name of wife of Lord Lakshmana",
        "sol": {
          "a": "Mata Sumitra",
          "b": "Mata Mandvi",
          "c": "Mata Shrutkirti",
          "d": "None",
        },
        "correct": "Mata Sumitra",
      },
      {
        "ques": "Name of wife of Lord Bharat",
        "sol": {
          "a": "Mata Sumitra",
          "b": "Mata Mandvi",
          "c": "Mata Shrutkirti",
          "d": "None",
        },
        "correct": "Mata Mandvi",
      },
      {
        "ques": "Name of wife of Lord Shatrughna",
        "sol": {
          "a": "Mata Sumitra",
          "b": "Mata Mandvi",
          "c": "Mata Shrutkirti",
          "d": "None",
        },
        "correct": "Mata Shrutkirti",
      },
      {
        "ques": "Where did amous Incident in Ramayana happened?",
        "sol": {
          "a": "Panchvati",
          "b": "Near ganaga",
          "c": "Siddhnath Ashram",
          "d": "Chitrakoot",
        },
        "correct": "Chitrakoot",
      },
      {
        "ques": "Mata Shabri Waited for Lord Ram where?",
        "sol": {
          "a": "Chitrakoot",
          "b": "Pampa Saovar",
          "c": "Matang Rishi ke Ashram",
          "d": "Drona giri parvat",
        },
        "correct": "Pampa Saovar",
      },
      {
        "ques": "From where Ravana took Mata Sita away.?",
        "sol": {
          "a": "Dandaka van",
          "b": "Chitrakoot",
          "c": "Panchvati",
          "d": "Kishkindha",
        },
        "correct": "Dandaka van",
      },
      {
        "ques":
            "At the time of Sufnakha Kand whose kingdom was there in Dandak van?",
        "sol": {
          "a": "Khar aur Dushan",
          "b": "Ravan",
          "c": "Dashanan",
          "d": "Kumbhkaran",
        },
        "correct": "Khar aur Dushan",
      },
      {
        "ques":
            "What was the animal in whose form rakshash came to divert Lord Ram?",
        "sol": {
          "a": "Swarn Heeran ",
          "b": "Swarn Pakshi",
          "c": "Swarn Bagh",
          "d": "Swarn Mrag",
        },
        "correct": "Swarn Mrag",
      },
      {
        "ques": "Mata Shabri told Lord Ram to meet whom?",
        "sol": {
          "a": "Sugreev ji",
          "b": "Baali ji",
          "c": "Hanuman ji",
          "d": "Jamvantha ji",
        },
        "correct": "Sugreev ",
      },
      {
        "ques": "Which city is called Leather City of India?",
        "sol": {
          "a": "Drona giri parvat",
          "b": "Rishyamukh Parvat",
          "c": "Dandak Van",
          "d": "Kishkindha",
        },
        "correct": "Rishyamukh Parvat ",
      },
      {
        "ques": "Who was not in the sabha of Sugreev ji before death of Bali?",
        "sol": {
          "a": "Hanuman ji",
          "b": "Angad ji",
          "c": "jamvanth ji",
          "d": "Kesari ji",
        },
        "correct": "Angad ji",
      },
      {
        "ques":
            "After Bali Sugreev ji was Maharaja of Kishkindha and Yuvraj was?",
        "sol": {
          "a": "Hanuman ji",
          "b": "Nal ji",
          "c": "Angad ji",
          "d": "Neel ji",
        },
        "correct": "Angad ji",
      },
      {
        "ques": "How many faces are considered Hanumanj ji to have?",
        "sol": {"a": "4", "b": "1", "c": "3", "d": "5"},
        "correct": "5, that's why Hanuman ji having a name Panchmukhi",
      },
      {
        "ques": "Who was not the son of Dashanan?",
        "sol": {
          "a": "Vibhishan",
          "b": "Meghnad",
          "c": "Indrajeeyt",
          "d": "Prahast",
        },
        "correct": "Vibhishan",
      },
      {
        "ques": "What Vardaan Kumbhkaran wanted?",
        "sol": {"a": "Nidrasan", "b": "Gyan", "c": "Bhakti", "d": "Indrasan"},
        "correct": "Indrasan",
      },
      {
        "ques": "Mata Saraswati made the original Vardaan of Kumbhkaran to?",
        "sol": {"a": "Gyan", "b": "Nidrasana", "c": "Bhakti", "d": "Indrasan"},
        "correct": "Nidrasana",
      },
      {
        "ques": "Ravan made Mata Sita stayed in?",
        "sol": {
          "a": "Virat Vatika",
          "b": "Phool VAtika",
          "c": "Ashok Vatika",
          "d": "None of these",
        },
        "correct": "Ashok Vatika",
      },
      {
        "ques": "Rakshasi who took care of Mata Sita in Lanka?",
        "sol": {
          "a": "Lankni",
          "b": "Trijata",
          "c": "Ahinya",
          "d": "none of these",
        },
        "correct": "Trijata",
      },
      {
        "ques": "Who was the female gatekeepre in Lanka?",
        "sol": {
          "a": "Trijata",
          "b": "Lankni",
          "c": "Ahinya",
          "d": "none of these",
        },
        "correct": "Lankni",
      },
      {
        "ques": "Who was the main spy of Dashanan?",
        "sol": {
          "a": "Vibhishan",
          "b": "Prahast",
          "c": "Veerupaksh",
          "d": "Shukh",
        },
        "correct": "Shukh",
      },
      {
        "ques": "By whom Vajramushti was killed?",
        "sol": {
          "a": "Maharaja Sugreev",
          "b": "Hanuman ji",
          "c": "Lord Ram ji",
          "d": "Angad ji",
        },
        "correct": "Maharaja Sugreev",
      },

      {
        "ques": "By whom Prahast was killed?",
        "sol": {
          "a": "Hanuman ji",
          "b": "Lord Lakshman",
          "c": "Lord Ram",
          "d": "Jamvanth ji",
        },
        "correct": "Lord Lakshman",
      },

      {
        "ques": "By whom sena nayak Durmukh was killed?",
        "sol": {
          "a": "Senapati Neel",
          "b": "Maharaj Sugreev",
          "c": "Lord Ram",
          "d": "Lord Hanuman ji",
        },
        "correct": "Lord hanuman ji",
      },

      {
        "ques": "By whom Veer Makraksh was killed?",
        "sol": {
          "a": "Lord Ram ji",
          "b": "Angad Ji",
          "c": "Senapati Neel",
          "d": "Senapati Nal",
        },
        "correct": "Lord Ram ji",
      },

      {
        "ques": "By whom Veer Kumbhkaran was killed?",
        "sol": {
          "a": "Jamvanth ji",
          "b": "Lord Hanuman ji",
          "c": "Lord Lakshman",
          "d": "Lord Ram ji",
        },
        "correct": "Lord Ram ji",
      },

      {
        "ques": "By whom Devantak was killed?",
        "sol": {
          "a": "Lord Hanuman ji",
          "b": "Maharaja Sugreev",
          "c": "Senapati Neel",
          "d": "Senapati Nal",
        },
        "correct": "Lord Hanuman ji",
      },

      {
        "ques": "By whom Narantak was killed?",
        "sol": {
          "a": "Lord Hanuman ji",
          "b": "Maharaja Sugreev",
          "c": "Senapati Neel",
          "d": "Angad ji",
        },
        "correct": "Angad ji",
      },

      {
        "ques": "By whom Trishura was killed??",
        "sol": {
          "a": "Angad ji",
          "b": "Maharaja Sugreev",
          "c": "Senapati Neel",
          "d": "Lord Hanuman ji",
        },
        "correct": "Angad ji",
      },

      {
        "ques": "By whom Atikaya was killed?",
        "sol": {
          "a": "Lord Ram ji",
          "b": "lord Laksmana",
          "c": "Hanuman Ji",
          "d": "Vibhishan ji",
        },
        "correct": "lord Laksmana",
      },

      {
        "ques": "To whom was shakti hit when Indrajeet Attacked?",
        "sol": {
          "a": "Lord Ram ji",
          "b": "lord Laksmana",
          "c": "Hanuman Ji",
          "d": "Maharaja Sugreev",
        },
        "correct": "Lord Lakshman ji",
      },

      {
        "ques":
            "To save Lakshmana ji life Mrid Sanjeevani was brought there by?",
        "sol": {
          "a": "Angad ji",
          "b": "Maharaja Sugreev",
          "c": "Senapati Neel",
          "d": "Lord Hanuman ji",
        },
        "correct": "Hanuman ji",
      },

      {
        "ques":
            "Who tried to interruputed Hanuman ji while going to take mrid Sanjeevani?",
        "sol": {
          "a": "Kaalnemi",
          "b": "Subahu",
          "c": "Veeru Paksh",
          "d": "Mareech",
        },
        "correct": "Kaalnemi",
      },

      {
        "ques": "Who killed Lankapati Ravan",
        "sol": {
          "a": "Lord Hanuman ji",
          "b": "Vibhishan ji",
          "c": "Lord Lakshman ji",
          "d": "Hidimba",
        },
        "correct": "Lord Ram ji",
      },

      {
        "ques": "After Dashanan who was the king of Lanka?",
        "sol": {
          "a": "Vibhishan ji",
          "b": "Maharaja Sugreev",
          "c": "Lord Lakshman ji",
          "d": "Lord Ram ji",
        },
        "correct": "Vibhishan ji",
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
      int randomNumber = rng.nextInt(4);
      setState(() {
        if (ques[index]['correct'] == ques[index]['sol'][st]) {
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
              const Color.fromARGB(255, 104, 223, 0),
              const Color.fromARGB(255, 227, 227, 0),
            ],
          ),
        ),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        "Welcome $name",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Your current score is $correct",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
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
                    color: const Color.fromARGB(255, 2, 0, 46),
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
                        checkandnext('a');
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
                        checkandnext('b');
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
                        checkandnext('c');
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
                        checkandnext('d');
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
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
