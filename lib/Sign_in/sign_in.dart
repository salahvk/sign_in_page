import 'package:flutter/material.dart';
import 'package:sign_in/login_animation_screen/login_screen.dart';
import 'package:sign_in/widgets/textField.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                newFormFields(
                  hint: 'Name',
                  icon: Icon(Icons.account_circle),
                  validator: (value) {
                    if (value != null && value.length < 5) {
                      return "Enter minimum five letters";
                    } else {
                      return null;
                    }
                  },
                  controller: namecontroller,
                ),
                SizedBox(
                  height: 20,
                ),
                newFormFields(
                  hint: 'Email',
                  icon: Icon(Icons.email),
                  controller: emailcontroller,
                ),
                SizedBox(
                  height: 20,
                ),
                newFormFields(
                  hint: 'Password',
                  icon: Icon(Icons.lock),
                  isobscure: true,
                  controller: passwordcontroller,
                ),
                const SizedBox(
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
                        if (formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Submitting form')));

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login_sc();
                          }));
                        }
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
      ),
    );
  }
}
