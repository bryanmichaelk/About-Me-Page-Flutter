import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutMePage(),
    );
  }
}

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "About Me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Transform.translate(
                      offset: Offset(0, -45),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 47,
                            backgroundColor: Colors.greenAccent,
                            child: CircleAvatar(
                              radius: 47,
                              backgroundImage: AssetImage('assets/profile.jpg'),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Bryan Michael Kurniawan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '5026221025',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'I’m Bryan, a web developer passionate about exploring new technologies and constantly learning. I thrive on tackling challenges and staying up-to-date with the latest advancements in the tech world.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram, size: 30),
                        onPressed: () {
                          launchUrl(Uri.parse(
                              'https://www.instagram.com/bryanmichaelk/profilecard/?igsh=MTczcDVxdXVzaXVpaQ=='));
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin, size: 30),
                        onPressed: () {
                          launchUrl(Uri.parse(
                              'https://www.linkedin.com/in/bryanmichaelk/'));
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.mail_outline, size: 30),
                        onPressed: () {
                          launchUrl(
                              Uri.parse('mailto:bryanmichaelk@gmail.com'));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

