import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_icon/animated_icon.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromARGB(255, 65, 4, 93),
            const Color.fromARGB(255, 239, 0, 223),
            const Color.fromARGB(255, 230, 88, 0),
          ])),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 80),
                createPadding(),
                SizedBox(height: 40),
                filds()
              ])),
    );
  }

  Expanded filds() {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    // color: Color.fromRGBO(225, 95, 27, .3),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                            const Color.fromARGB(255, 1, 1, 1).withOpacity(0.3),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      )
                    ]),
                child: Column(children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' Email',
                          hintStyle: GoogleFonts.bebasNeue(
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                  Divider(height: 20),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: ' Password',
                          hintStyle: GoogleFonts.bebasNeue(
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                        ),
                      )),
                ]),
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  print('test');
                },
                child: Center(
                  child: Text(
                    'Do You Forgot Password?',
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onLongPress:() {
                  print('InkWell');
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 239, 0, 223),
                    ),
                    child: Center(
                        child: Text("Login",
                            style: GoogleFonts.bebasNeue(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white,
                            )))),
              ),
              SizedBox(height: 10),
            ]),
      ),
    ));
  }

  Padding createPadding() {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Login",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 52,
                    color: Colors.white,
                  )),
              SizedBox(height: 1),
              Text("Welcome Back!",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                    color: Colors.white,
                  ))
            ]));
  }
}
