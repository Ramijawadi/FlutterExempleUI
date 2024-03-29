// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/pages/Login.dart';

class Regiter extends StatefulWidget {
  const Regiter({super.key});

  @override
  State<Regiter> createState() => _RegiterState();
}

class _RegiterState extends State<Regiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(108, 99, 255, 1.0),
            title: Center(
              child: Text(
                "Register here ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 70,
                              child: Image.asset("assets/flutter.png")),
                          Text("REGISTER PAGE",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email", border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password", border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "confirm Password",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Forget password ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(108, 99, 255, 1.0),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(108, 99, 255, 1.0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text("Register",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Already have an Account ! LogIn ",
                      style: TextStyle(fontSize: 16)),
                )),
          ],
        ));
  }
}
