import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login_sc extends StatelessWidget {
  const Login_sc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottie Animation'),
          centerTitle: true,
        ),
        body: Column(children: [
          Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_enlvakcq.json'),
        ]),
      ),
    );
  }
}
