import 'package:flutter/material.dart';

class Resultpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = args['name'] ?? "User";
    String score = args['score'] ?? "";
    String restype = "";
    String image = "";
    if (int.parse(score) > 7)
      image = "assets/happy.png";
    else if (int.parse(score) <= 7 && int.parse(score) > 4)
      image = "assets/average.png";
    else
      image = "assets/sad.png";

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
              const Color.fromARGB(255, 255, 226, 119),
              const Color.fromARGB(255, 255, 127, 170),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset("$image", height: 300, width: 300),
            Center(
              child: Column(
                children: [
                  Text(
                    "Hello $name!",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Your Score : $score",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 190),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 0, 4, 30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Back home",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 4, 176, 255),
                    fontSize: 36,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
