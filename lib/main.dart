import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(), // 바꾸는거 불가능
  );
}

class MyApp  extends StatelessWidget {
  const MyApp ({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal, // 클래스 안에 들어가야 바꾸는 것이 가능 핫리로드로도
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                foregroundImage: AssetImage("asset/images/mopiDuck.jpeg"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Roni Eo',
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent.shade100,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                          Icons.smartphone,
                          color: Colors.teal,
                          size: 30,
                        ),
                        title: Text(
                          '+82 010 1234 5678',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal,
                          ),
                        ),
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Card(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ListTile(
                   leading: Icon(
                     Icons.email,
                     color: Colors.teal,
                     size: 30,
                   ),
                   title: Text(
                     'ronieo@ronieo.io',
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.teal,),
                   ),
                 ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
