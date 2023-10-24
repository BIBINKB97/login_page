import 'package:flutter/material.dart';
import 'package:login_page/homepage.dart';

import 'class.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool ifIncorrect = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //app bar

        appBar: AppBar(
          title: Text("Please Login To Continue"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 87, 162, 203),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(4))),
          elevation: 10,
        ),

        // login text

        body: Column(
          children: [
            Text(
              "Log in",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 87, 162, 203),
                fontWeight: FontWeight.bold,
                height: 5,
              ),
            ),

            //  username and password section

            Padding(
              padding: EdgeInsets.all(25.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _username,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.verified_user),
                          labelText: "User Name",
                          hintText: "Enter User Name"),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "enter username";
                        }
                        if (value.trim().length < 8) {
                          return "Minimum 8 characters required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock_rounded),
                          labelText: "Password",
                          hintText: "Enter  Password"),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "enter password";
                        }
                        if (value.trim().length < 5) {
                          return "Minimum 5 characters required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),

            //wrong password/ username

            Visibility(
              visible: ifIncorrect,
              child: Text(
                "Incorrect username or password",
                style: TextStyle(color: Colors.red),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // login button and validation

            Container(
              height: 60,
              width: 260,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 87, 162, 203),
                borderRadius: BorderRadius.circular(20),
              ),
              child: MaterialButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    if (_username.text == 'bibin007' &&
                        _password.text == '123456') {
                      A.setUser(true);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                    } else {
                      setState(() {
                        ifIncorrect = true;
                      });
                    }
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
