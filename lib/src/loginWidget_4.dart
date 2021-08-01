import 'package:flutter/material.dart';
import 'package:flutter_login_package/src/widget/allclippath.dart';

class StreetStyle extends StatefulWidget {
  @override
  _StreetStyleState createState() => _StreetStyleState();
}

class _StreetStyleState extends State<StreetStyle> {
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
            Image.asset(
              'assets/gralfiti.jpg',
              width: width,
              height: height,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: height * .15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: width * .9,
                  height: height * .5,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * .01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hasFloatingPlaceholder: false,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              labelText: 'Email',
                              suffixIcon: isWriting == false
                                  ? Icon(
                                      Icons.warning_amber_outlined,
                                      color: Colors.red,
                                    )
                                  : null,
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            style:
                                TextStyle(fontSize: 23, color: Colors.indigo),
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
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hasFloatingPlaceholder: false,
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                    isPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.black),
                                onPressed: () {
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                              ),
                              labelStyle: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: TextStyle(fontSize: 23, color: Colors.black),
                            obscureText: isPassword ? false : true,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Transform.rotate(
                              angle: 0.7,
                              child: Container(
                                height: height * .08,
                                width: width * .75,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.blue[700],
                                      Colors.purple[600].withOpacity(.9),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: ClipPathStreetStyle(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topRight,
                    colors: [
                      Colors.blue[700],
                      Colors.purple[600].withOpacity(.9),
                    ],
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: ClipPathStreetStyleSharp(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.lightBlue[800],
                      Colors.purple[600].withOpacity(.9),
                    ],
                  ),
                ),
              ),
            ),
            // ClipPath(
            //   clipper: ClipPathStreetStyleSharpTwo(),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.centerLeft,
            //         end: Alignment.bottomLeft,
            //         colors: [
            //           Colors.blue[900],
            //           Colors.purple[600],
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              right: width * .25,
              top: height * .41,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.white70,
                  ),
                  onPressed: () {
                    print('VHQ');
                  }),
            ),
            Positioned(
              right: height * .02,
              top: height * .03,
              child: Text('It\'s Street Style',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )
          ]),
        ),
      ),
    );
  }
}
