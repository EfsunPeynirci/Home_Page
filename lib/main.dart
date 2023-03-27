import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(   //ctrl+Q diyerek CircleAvatar'da neler yazildigini ogrenebilirsin
                  radius: 80.0,
                  backgroundImage: AssetImage('image/efsun.jpg'),
                ),
                Text(
                  'Efsun Peynirci',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 250.0,       //Eger bunu yazmasaydik cizgi bastan sona dogru olurdu.
                  child: Divider(    //FLUTTER DEVELOPER altina ince bir cizgi cizilmesini sagladi
                    color: Colors.teal.shade900,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+90 505123987',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Source Sans Pro'
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 30.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'efsun@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

