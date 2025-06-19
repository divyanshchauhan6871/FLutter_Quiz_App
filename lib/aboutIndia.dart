import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class AboutIndia extends StatefulWidget {
  @override
  _AboutIndiaState createState() => _AboutIndiaState();
}

class _AboutIndiaState extends State<AboutIndia> {
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
        "ques": "What is the capital of India?",
        "sol": {"a": "Delhi", "b": "Mumbai", "c": "Chennai", "d": "Kolkata"},
        "correct": "1",
      },
      {
        "ques": "What is the Financial capital of India?",
        "sol": {"a": "Delhi", "b": "Mumbai", "c": "Chennai", "d": "Kolkata"},
        "correct": "2",
      },
      {
        "ques": "What is the IT capital of India?",
        "sol": {"a": "Delhi", "b": "Mumbai", "c": "Chennai", "d": "Banglore"},
        "correct": "4",
      },
      {
        "ques": "How many states are there in India?",
        "sol": {"a": "29", "b": "27", "c": "28", "d": "26"},
        "correct": "3",
      },
      {
        "ques": "How many union terretories are there in India?",
        "sol": {"a": "7", "b": "9", "c": "10", "d": "8"},
        "correct": "4",
      },
      {
        "ques": "Who was the first Prime minister of India?",
        "sol": {
          "a": "Indira Gandhi",
          "b": "Jawaharlal Nehru",
          "c": "Rajiv Gandhi",
          "d": "Rajendra Prasad",
        },
        "correct": "2",
      },
      {
        "ques": "Who is the Father of our Nation?",
        "sol": {
          "a": "Jawaharlal Nehru",
          "b": "B.R. Ambedkar",
          "c": "Mahatma Gandhi",
          "d": "Sonia Gandhi",
        },
        "correct": "3",
      },
      {
        "ques": "Who was the first President of India?",
        "sol": {
          "a": "Rajendra Parsad",
          "b": "Vallabhai Patel",
          "c": "B.R. Ambedkar",
          "d": "Subhash Chandra Bose",
        },
        "correct": "1",
      },
      {
        "ques": "Which countries do not share border with India?",
        "sol": {
          "a": "Myanmar",
          "b": "Afghanistan",
          "c": "Bhutan",
          "d": "Tajakistan",
        },
        "correct": "4",
      },
      {
        "ques": "Which countries do not share border with India?",
        "sol": {
          "a": "Myanmar",
          "b": "Afghanistan",
          "c": "Bhutan",
          "d": "Tajakistan",
        },
        "correct": "4",
      },
      {
        "ques": "Which city is called Manchester of India?",
        "sol": {
          "a": "Ahmedabad",
          "b": "Chennai",
          "c": "Pune",
          "d": "Bengaluru",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called Khwaja ki Nagri of India?",
        "sol": {
          "a": "Bengaluru",
          "b": "Ajmer",
          "c": "Ujjain",
          "d": "Rishikesh",
        },
        "correct": "2",
      },
      {
        "ques": "Which city is called Garden City of India?",
        "sol": {"a": "Banaras", "b": "Bengaluru", "c": "Bikaner", "d": "Surat"},
        "correct": "2",
      },
      {
        "ques": "Which city is called Gate Way of South India?",
        "sol": {
          "a": "Ahmedabad",
          "b": "Kolkata",
          "c": "Mysore",
          "d": "Chennai",
        },
        "correct": "4",
      },
      {
        "ques": "Which city is called Electronic Manufacturing Hub in India?",
        "sol": {
          "a": "Bengaluru",
          "b": "Chandigarh",
          "c": "Chennai",
          "d": "Agra",
        },
        "correct": "3",
      },
      {
        "ques": "Which city is called Pump City of India?",
        "sol": {
          "a": "Coimbatore",
          "b": "Pune",
          "c": "Ahmedabad",
          "d": "Mathura",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called Queen of the Hills in India?",
        "sol": {
          "a": "Surat",
          "b": "Chennai",
          "c": "Rishikesh",
          "d": "Darjeeling",
        },
        "correct": "4",
      },
      {
        "ques": "Which city is called Coal Capital of India?",
        "sol": {"a": "Kolkata", "b": "Dhanbad", "c": "Noida", "d": "Bengaluru"},
        "correct": "2",
      },
      {
        "ques": "Which city is called City of Pearls in India?",
        "sol": {
          "a": "Hyderabad",
          "b": "Bengaluru",
          "c": "Bhopal",
          "d": "Surat",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called Pink City of India?",
        "sol": {"a": "Jaipur", "b": "Ahmedabad", "c": "Ranchi", "d": "Pune"},
        "correct": "1",
      },
      {
        "ques": "Which city is called Steel City of India?",
        "sol": {
          "a": "Rishikesh",
          "b": "Surat",
          "c": "Jamshedpur",
          "d": "Dispur",
        },
        "correct": "3",
      },
      {
        "ques": "Which city is called Sun City of India?",
        "sol": {"a": "Chennai", "b": "Agra", "c": "Mumbai", "d": "Jodhpur"},
        "correct": "4",
      },
      {
        "ques": "Which city is called Leather City of India?",
        "sol": {"a": "Moradabad", "b": "Kanpur", "c": "Bengaluru", "d": "Pune"},
        "correct": "2",
      },
      {
        "ques": "Which city is called Rajwaro ka Shahar?",
        "sol": {"a": "Lucknow", "b": "Rishikesh", "c": "Surat", "d": "Jaipur"},
        "correct": "4",
      },
      {
        "ques": "Which city is called City of Nawabs?",
        "sol": {
          "a": "Ahmedabad",
          "b": "Lucknow",
          "c": "Kolkata",
          "d": "Deoband",
        },
        "correct": "2",
      },
      {
        "ques": "Which city is called City of Seven Islands?",
        "sol": {
          "a": "Mumbai",
          "b": "Kolkata",
          "c": "Chennai",
          "d": "Thiruvananthpuram",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called Queen of the Mountains?",
        "sol": {
          "a": "Nainital",
          "b": "Dehradun",
          "c": "Mussoorie",
          "d": "Tanakpur",
        },
        "correct": "3",
      },
      {
        "ques": "Which city is called Gateway of India?",
        "sol": {"a": "Kolkata", "b": "Panaji", "c": "Chennai", "d": "Mumbai"},
        "correct": "4",
      },
      {
        "ques": "Which city is called City of Weavers?",
        "sol": {
          "a": "Panipat",
          "b": "Sehore",
          "c": "Bhopal",
          "d": "Kurukshetra",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called Cultural Capital of India?",
        "sol": {
          "a": "Pune",
          "b": "Indore",
          "c": "Kolkata",
          "d": "Vishakhapatnam",
        },
        "correct": "3",
      },
      {
        "ques": "Which city is called Queen of Deccan?",
        "sol": {"a": "Patna", "b": "Pune", "c": "Surat", "d": "Bhopal"},
        "correct": "2",
      },
      {
        "ques": "Which city is called Yoga Capital of the World?",
        "sol": {
          "a": "Rishikesh",
          "b": "Amritsar",
          "c": "Bengaluru",
          "d": "Ahmedabad",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called City of Joy?",
        "sol": {"a": "Jallandhar", "b": "Surat", "c": "Kanpur", "d": "Kolkata"},
        "correct": "4",
      },
      {
        "ques": "Which city is called Adventure Capital of India?",
        "sol": {
          "a": "Varanasi",
          "b": "Agra",
          "c": "Rishikesh",
          "d": "Ludhiana",
        },
        "correct": "3",
      },
      {
        "ques": "Which city is called City of Diamonds?",
        "sol": {"a": "Pune", "b": "Surat", "c": "Ayodhya", "d": "Chennai"},
        "correct": "2",
      },
      {
        "ques": "Longest river in India?",
        "sol": {
          "a": "Ganga",
          "b": "Godavari",
          "c": "Brahmputra",
          "d": "Narmada",
        },
        "correct": "1",
      },
      {
        "ques": "Which is the highest mountain peak in India?",
        "sol": {"a": "8632", "b": "8617", "c": "8611", "d": "8586"},
        "correct": "3",
      },
      {
        "ques": "City Udaipur was named after which Ruler?",
        "sol": {
          "a": "Maharana Pratap Singh",
          "b": "Rana Udai singh",
          "c": "Ratan Sngh",
          "d": "Vikram Singh",
        },
        "correct": "2",
      },

      {
        "ques": "Who was the first wife of Maharana Pratap Singh?",
        "sol": {
          "a": "Rani Phool Bai Rathore",
          "b": "Rani Shahmati Bai Hada",
          "c": "Rani Champa Bai Jhati",
          "d": "Rani Ajabdeh Punwar",
        },
        "correct": "4",
      },
      {
        "ques": "Which city is called City of Diamonds?",
        "sol": {"a": "1759", "b": "1757", "c": "1752", "d": "1753"},
        "correct": "2",
      },
      {
        "ques": "The moment Pandavs left Hasthinapur they went to?",
        "sol": {
          "a": "Kashi",
          "b": "Dwarks",
          "c": "Indraprastha",
          "d": "Kurukshetra",
        },
        "correct": "3",
      },
      {
        "ques": "Whom was not able to see Virat swaroop of Lord Krishna?",
        "sol": {
          "a": "Adhiratha",
          "b": "Arjun",
          "c": "Sanjay",
          "d": "None of these",
        },
        "correct": "1",
      },
      {
        "ques": "Lord Ram was borned in which dynasty?",
        "sol": {"a": "Varun", "b": "Moon", "c": "Sun", "d": "None of these"},
        "correct": "3",
      },
      {
        "ques":
            "In the epic Ramayana, which bird tried to prevent Ravana from carrying Sita away?",
        "sol": {
          "a": "Jatayu",
          "b": "Garuda",
          "c": "Kagbhusandi",
          "d": "Bhulinga",
        },
        "correct": "1",
      },
      {
        "ques": "Which city is called City of Diamonds?",
        "sol": {
          "a": "Ghatotkacha",
          "b": "Subahu",
          "c": "Veeru Paksh",
          "d": "Mareech",
        },
        "correct": "4",
      },
      {
        "ques": "What was the name of first wife of Bheem in Mahaharat?",
        "sol": {"a": "Anihnya", "b": "Lankni", "c": "Sufnakha", "d": "Hidimba"},
        "correct": "4",
      },
      {
        "ques": "Fourth avtar of Lord Vishnu?",
        "sol": {"a": "Kurma", "b": "Varha", "c": "Narsimha", "d": "Vamana"},
        "correct": "3",
      },
      {
        "ques": "Third avtar of Lord Vishnu?",
        "sol": {"a": "Kurma", "b": "Varha", "c": "Narsimha", "d": "Vamana"},
        "correct": "2",
      },
      {
        "ques": "Lord Narsimha came to kill whom?",
        "sol": {
          "a": "Hiranyakashyap",
          "b": "Hiranyaksh",
          "c": "Karta Virya Arjun",
          "d": "Bali",
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
      int randomNumber = rng.nextInt(4);
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
              const Color.fromARGB(255, 255, 69, 199),
              const Color.fromARGB(255, 54, 207, 245),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
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
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Question : ${ques[index]['ques']}",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 0, 0),
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
