import 'package:flutter/material.dart';
import 'package:sign_in/login_animation_screen/login_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.blue[900],
                        minimumSize: Size.fromHeight(50),
                        shape: StadiumBorder()),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login_sc();
                      }));
                    },
                    child: Text('Sign In')),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot password ?'),
              ),
              SizedBox(
                height: 300,
              ),
              Text('Dont You have an account yet ?')
            ],
          ),
        ),
      ),
    );
  }
}
