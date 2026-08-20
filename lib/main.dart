import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Arial',
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            // Header background with profile picture
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJd0oWydDCzMZYbf-omS4b1cis51QbKf7DzDxvv0nWHMvHus_DdMdJfgp7_NUHolezITIwagBPUsyuEEwpRq5BlwOMzNqigoFhkaWFDQ&s=10',
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Mark Joseph Baculinao',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  Text(
                    '"Miji"',
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Small banner image
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5V6HlCNbuGOO9rbr4WK6dSMEgAKFQcoKmjojvr6W6WQ&s=10',
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 15),

            // Personal Information Card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                          ),

                          SizedBox(width: 10),

                          Text(
                            'Personal Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(Icons.cake),
                      title: Text('Age'),
                      subtitle: Text('20 years old'),
                    ),

                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Birthday'),
                      subtitle: Text('March 14, 2005'),
                    ),

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Address'),
                      subtitle: Text('Cabuyao, Laguna'),
                    ),

                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text('Hobby'),
                      subtitle: Text('Playing basketball and gaming'),
                    ),

                    ListTile(
                      leading: Icon(Icons.format_quote),
                      title: Text('Motto'),
                      subtitle: Text('All I need to hear'),
                    ),

                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Course/Program'),
                      subtitle: Text('BS Information Technology'),
                    ),

                    ListTile(
                      leading: Icon(Icons.timeline),
                      title: Text('Year Level'),
                      subtitle: Text('3rd Year'),
                    ),

                    ListTile(
                      leading: Icon(Icons.groups),
                      title: Text('Section'),
                      subtitle: Text('3IT-A'),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            // Academic Information Card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.book,
                            color: Colors.deepPurple,
                          ),

                          SizedBox(width: 10),

                          Text(
                            'Academic Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Favorite Subject'),
                      subtitle: Text(
                        'Mobile Application Development',
                      ),
                    ),

                    ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Programming Language'),
                      subtitle: Text('Dart/Flutter'),
                    ),

                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Technical Skill'),
                      subtitle: Text(
                        'UI/UX Design and App Development',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}