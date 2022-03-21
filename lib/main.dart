import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in/Sign_in/sign_in.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page_one(),
    );
  }
}

class Page_one extends StatelessWidget {
  const Page_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.amber, Colors.cyan.shade900],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 90.0, left: 60),
                    child: Row(
                      children: const [
                        Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 5,
                              fontSize: 40,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 68),
                    child: Row(
                      children: [
                        Text(
                          "SalaApp create's a new world",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.cyan[900],
                          minimumSize: Size.fromHeight(50),
                          shape: StadiumBorder()),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text('Sign In')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.cyan[900],
                          primary: Colors.white,
                          minimumSize: Size.fromHeight(50),
                          shape: StadiumBorder()),
                      onPressed: () {},
                      child: Text('Sign Up')),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
