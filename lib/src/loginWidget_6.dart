import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_package/src/widget/allclippath.dart';

class MetroSocial extends StatefulWidget {
  @override
  _MetroSocialState createState() => _MetroSocialState();
}

class _MetroSocialState extends State<MetroSocial> {
  bool isWriting = false;
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Stack(children: [
            ClipPath(
              clipper: ClipPathMetroSocialBlock1(),
              child: Container(
                width: width,
                height: height,
                color: Colors.green[300],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.asset(
                  'assets/logo4.png',
                  width: height / 2.5,
                  height: height / 2.5,
                ),
              ),
            ),
            ClipPath(
              clipper: ClipPathMetroSocialBlock2(),
              child: Container(
                width: width,
                height: height,
                color: Colors.green,
              ),
            ),
            Positioned(
              right: 0,
              bottom: height * .25,
              child: Container(
                width: width * .7,
                height: height * .3,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: isWriting == false
                              ? Icon(
                                  Icons.warning,
                                  color: Colors.red,
                                )
                              : null,
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.green[900],
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green[900],
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green[900],
                            ),
                          ),
                        ),
                        cursorColor: Colors.green[900],
                        style:
                            TextStyle(fontSize: 23, color: Colors.green[900]),
                        onChanged: (val) {
                          if (val.length == 0) {
                            setState(() {
                              isWriting = false;
                            });
                          } else {
                            setState(() {
                              isWriting = true;
                            });
                          }
                        },
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      TextField(
                        cursorColor: Colors.green[900],
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                                isPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.green[900]),
                            onPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                          ),
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.green[900],
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green[900],
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.green[900],
                            ),
                          ),
                        ),
                        style:
                            TextStyle(fontSize: 23, color: Colors.green[900]),
                        obscureText: isPassword ? false : true,
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white70, shape: BoxShape.circle),
                            child: IconButton(
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.green[900],
                                  size: 30,
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: height * .05,
              child: Container(
                width: width * .2,
                height: height * .25,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add,
                        size: 25,
                        color: Colors.green[900],
                      ),
                      Transform.rotate(
                          angle: -90 * pi / 180,
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                                color: Colors.green[900],
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: ClipPathMetroSocialBlock3(),
              child: Container(
                width: width,
                height: height,
                color: Colors.green[700],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
