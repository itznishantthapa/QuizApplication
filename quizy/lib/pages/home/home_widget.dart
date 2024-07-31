import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'Plus Jakarta Sans', // Set the font family
    ),
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Hi, Nishant',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Plus Jakarta Sans', // Set the font family
                ),
              ),
              Text(
                "Let's make this day productive",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontFamily: 'Plus Jakarta Sans', // Set the font family
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatCard('Ranking', '348', Icons.emoji_events),
                  _buildStatCard('Points', '1209', Icons.monetization_on),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Let's play",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Plus Jakarta Sans', // Set the font family
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    QuizCategoryCard(
                      icon: Icons.sports_basketball,
                      title: 'Sports',
                      questionCount: 50,
                    ),
                    QuizCategoryCard(
                      icon: Icons.science,
                      title: 'Chemistry',
                      questionCount: 30,
                    ),
                    QuizCategoryCard(
                      icon: Icons.calculate,
                      title: 'Math',
                      questionCount: 95,
                    ),
                    QuizCategoryCard(
                      icon: Icons.history,
                      title: 'History',
                      questionCount: 128,
                    ),
                    QuizCategoryCard(
                      icon: Icons.biotech,
                      title: 'Biological',
                      questionCount: 75,
                    ),
                    QuizCategoryCard(
                      icon: Icons.map,
                      title: 'Geography',
                      questionCount: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String count, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange, size: 30),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            fontFamily: 'Plus Jakarta Sans', // Set the font family
          ),
        ),
        Text(
          count,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Plus Jakarta Sans', // Set the font family
          ),
        ),
      ],
    );
  }
}

class QuizCategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int questionCount;

  const QuizCategoryCard({
    required this.icon,
    required this.title,
    required this.questionCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 50, color: Colors.white),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Plus Jakarta Sans', // Set the font family
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '$questionCount questions',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    fontFamily: 'Plus Jakarta Sans', // Set the font family
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
