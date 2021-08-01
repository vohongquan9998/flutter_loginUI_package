import 'package:flutter/material.dart';
import 'package:flutter_login_package/src/widget/allclippath.dart';

class WaterStyleLogin extends StatefulWidget {
  @override
  _WaterStyleLoginState createState() => _WaterStyleLoginState();
}

class _WaterStyleLoginState extends State<WaterStyleLogin> {
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
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ClipPath(
                  clipper: ClipPathWaterStyle(),
                  child: Container(
                    width: width * .8,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue[800],
                        Colors.blue[700].withOpacity(0.4)
                      ],
                    )),
                  ),
                ),
              ),
              ClipPath(
                clipper: ClipPathWaterStyle(),
                child: Container(
                  width: width * .8,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.center,
                      colors: [
                        Colors.blue[300].withOpacity(0.5),
                        Colors.blue[600],
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: width * .7,
                  height: height * .6,
                  decoration: BoxDecoration(
                    color: Colors.blue[200].withOpacity(.8),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(6, 6),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Aquarium'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900]),
                          ),
                        ),
                        SizedBox(
                          height: height * .04,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue[900],
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
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                          style: TextStyle(fontSize: 23, color: Colors.indigo),
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
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue[900],
                            ),
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                  isPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.blue[900]),
                              onPressed: () {
                                setState(() {
                                  isPassword = !isPassword;
                                });
                              },
                            ),
                            labelStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                          style: TextStyle(fontSize: 23, color: Colors.indigo),
                          obscureText: isPassword ? false : true,
                        ),
                        SizedBox(
                          height: height * .04,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            width: width * .5,
                            height: height * .1,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    height: height * .04,
                                    width: width * .5,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black54,
                                            blurRadius: 9,
                                            spreadRadius: 1,
                                            offset: Offset(7, 8),
                                          )
                                        ],
                                        color: Colors.blue[900],
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  child: Container(
                                    height: height * .08,
                                    width: height * .08,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo[800],
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 9,
                                          spreadRadius: 1,
                                          offset: Offset(7, 9),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 28,
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: height * .015,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            width: width * .5,
                            height: height * .1,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    height: height * .04,
                                    width: width * .5,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 9,
                                          spreadRadius: 1,
                                          offset: Offset(0, 6),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 8,
                                  child: Container(
                                    height: height * .08,
                                    width: height * .08,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo[800],
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 9,
                                          spreadRadius: 1,
                                          offset: Offset(1, 9),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.person_add,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 28,
                                  child: Text(
                                    'Sign Up',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
