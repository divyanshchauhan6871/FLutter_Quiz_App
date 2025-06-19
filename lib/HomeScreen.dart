import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController texteditingcontroller = TextEditingController();
  String name = "User";
  String warning = "";

  @override
  Widget build(BuildContext context) {
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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 4, 11),
              Color(0xFF1E3C72),
              Color.fromARGB(255, 0, 4, 11),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 60),
              Column(
                children: [
                  Text(
                    "Test your knowledge",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "According to choice select the category",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: texteditingcontroller,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    hintText: 'Enter your name : ',
                    hintStyle: const TextStyle(color: Colors.black),
                    // prefixIcon: const Icon(Icons.currency_rupee),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 0, 0, 0),
                        ),
                        fixedSize: WidgetStatePropertyAll(Size(230, 60)),
                      ),
                      onPressed: () {
                        name = texteditingcontroller.text;
                        if (name != "") {
                          Navigator.pushNamed(
                            context,
                            '/ramayan',
                            arguments: {'name': name},
                          );
                        } else {
                          setState(() {
                            warning = "Enter the name first";
                          });
                        }
                      },
                      child: Text(
                        "Ramayan",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 138, 245, 16),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(Size(230, 60)),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () {
                        name = texteditingcontroller.text;
                        if (name != "") {
                          Navigator.pushNamed(
                            context,
                            '/mahabharat',
                            arguments: {'name': name},
                          );
                        } else {
                          setState(() {
                            warning = "Enter the name first";
                          });
                        }
                      },
                      child: Text(
                        "Mahabharat",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 138, 245, 16),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(Size(230, 60)),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () {
                        name = texteditingcontroller.text;
                        if (name != "") {
                          Navigator.pushNamed(
                            context,
                            '/cricket',
                            arguments: {'name': name},
                          );
                        } else {
                          setState(() {
                            warning = "Enter the name first";
                          });
                        }
                      },
                      child: Text(
                        "Cricket",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 138, 245, 16),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(Size(230, 60)),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () {
                        name = texteditingcontroller.text;
                        if (name != "") {
                          Navigator.pushNamed(
                            context,
                            '/aboutIndia',
                            arguments: {'name': name},
                          );
                        } else {
                          setState(() {
                            warning = "Enter the name first";
                          });
                        }
                      },
                      child: Text(
                        "About India",
                        style: TextStyle(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 138, 245, 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "$warning",
                style: TextStyle(
                  color: const Color.fromARGB(255, 228, 1, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
