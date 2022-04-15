import 'package:flutter/material.dart';
import 'package:interview_task/screens/HomePage.dart';

enum colors { red, blue }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailkey = GlobalKey<FormState>();
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              loginform(),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.pink,
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefirst = value!;
                        });
                      },
                    ),
                  ),
                  loginFieldName('Remember me?'),
                ],
              ),
              loginButton(),
              Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialmedialogins('G', Colors.red),
                    socialmedialogins('f', Colors.blue),
                    socialmedialogins('in', Colors.blue)
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: Text.rich(
                  TextSpan(
                    text: 'Need an account? ',
                    style: TextStyle(fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'SIGNUP',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget loginform() {
    return Form(
      key: emailkey,
      child: Column(
        children: [
          loginFieldName('Email'),
          TextFormField(
            validator: (val) {
              if (val!.isEmpty) {
                return 'please provide email';
              }

              if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(val)) {
                return 'Please enter valid Email';
              }

              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          loginFieldName('Password'),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return "* Required";
              } else if (value.length < 6) {
                return "Password should be atleast 6 characters";
              } else
                return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginFieldName(String text) {
    return Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.fromLTRB(0, 20, 20, 10),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ));
  }

  Widget loginButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      padding: EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        color: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
            ),
            onPressed: () {
              if (emailkey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              } else {
                return null;
              }
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }

  Widget socialmedialogins(String letter, Color colorName) {
    return Container(
      height: 50,
      width: 50,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colorName, width: 3),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            letter,
            style: TextStyle(
                fontSize: 20, color: colorName, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
