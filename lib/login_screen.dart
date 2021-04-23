import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgimage,
                  height: height * 0.43,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.43,
                  width: width,
                  // color: Colors.orange.withOpacity(0.2),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.7],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                ),
                Positioned(
                  bottom: 30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            text: appname + "\n",
                            children: [
                              TextSpan(
                                  text: slogan,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ])),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Container(
                child: Text(
                  " $loginString",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primaryColor.withOpacity(0.3),
                        Colors.transparent
                      ],
                    ),
                    border: Border(
                        left: BorderSide(color: primaryColor, width: 5))),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor)),
                  prefixIcon: Icon(Icons.email, color: primaryColor),
                  labelText: "EMAIL ADDRESS",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor)),
                  prefixIcon: Icon(Icons.lock_open, color: primaryColor),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child:
                  FlatButton(onPressed: () {}, child: Text("Forget Password?")),
            ),
            Center(
              child: SizedBox(
                height: height * 0.07,
                width: width - 30,
                child: FlatButton(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Login to account",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.white),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?"),
                FlatButton(
                    onPressed: () {},
                    child: Text("Create Account",
                        style: TextStyle(color: primaryColor, fontSize: 16)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
