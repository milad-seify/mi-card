import 'package:flutter/material.dart';
import 'cart-create.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade400,
        appBar: AppBar(
          leading: Icon(
            Icons.add_card,
            color: Colors.blueGrey[300],
          ),
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            'MyCard',
            style: TextStyle(
                fontFamily: ('Pacifico'),
                letterSpacing: 3.0,
                color: Colors.blueGrey.shade300,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/mySelf.jpeg'),
                // onBackgroundImageError: AssetImage('images/s'),
                foregroundColor: Colors.white,
              ),
              const Text(
                'Milad Seyfi',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              const Text(
                'Computer Engineering',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 10.0,
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              const Divider(
                height: 20,
                thickness: 0.8,
                indent: 140.0,
                endIndent: 140.0,
                color: Colors.yellow,
              ),
              SetCard(
                titleUp: '+98 916 213 0569',
                titleDown: 'Phone',
                leadingIcon: Icon(
                  Icons.phone_iphone,
                  size: 30.0,
                  color: Colors.blue[700],
                ),
                trailingIcon: const Icon(
                  Icons.person,
                  color: Colors.pink,
                  size: 25.0,
                ),
              ),
              SetCard(
                  titleUp: 'Miladseify5',
                  titleDown: 'Gmail',
                  leadingIcon: Icon(
                    Icons.email,
                    size: 30.0,
                    color: Colors.blue[700],
                  ),
                  trailingIcon: const Icon(
                    Icons.local_florist,
                    color: Colors.teal,
                    size: 25.0,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
