import 'package:flutter/material.dart';

class GreenTea extends StatefulWidget {
  @override
  _GreenTeaState createState() => _GreenTeaState();
}

class _GreenTeaState extends State<GreenTea> {
  bool isWriting = false;
  bool isChoose = false;
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: Stack(
          children: [
            isChoose == false
                ? Positioned(
                    top: -height * .15,
                    left: -width * .3,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: width,
                      height: width,
                      child: Center(
                        child: Transform.rotate(
                          angle: 7,
                          child: Text(
                            '\t\t\t Life Tea',
                            style: TextStyle(
                                color: Colors.green[700],
                                fontSize: 60,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    top: -height * .05,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isChoose = false;
                        });
                      },
                      child: Container(
                        width: height * .1,
                        height: height * .1,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_downward,
                              size: 30,
                              color: Colors.green[800],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            Positioned(
              bottom: isChoose == false ? height * .05 : null,
              top: isChoose ? height * .05 : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(110),
                              topRight: Radius.circular(15))),
                      width: width * .9,
                      height: height * .4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextField(
                                onTap: () {
                                  setState(() {
                                    isChoose = true;
                                  });
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.green[800],
                                  ),
                                  labelText: 'Email',
                                  suffixIcon: isWriting == false
                                      ? Icon(
                                          Icons.warning_amber_outlined,
                                          color: Colors.red,
                                        )
                                      : null,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green[800],
                                      fontWeight: FontWeight.bold),
                                ),
                                style: TextStyle(
                                    fontSize: 23, color: Colors.indigo),
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
                                height: 20,
                              ),
                              TextField(
                                onTap: () {
                                  setState(() {
                                    isChoose = true;
                                  });
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.green[800],
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                  ),
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                        isPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.green[800]),
                                    onPressed: () {
                                      setState(() {
                                        isPassword = !isPassword;
                                      });
                                    },
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 25,
                                      color: Colors.green[800],
                                      fontWeight: FontWeight.bold),
                                ),
                                style: TextStyle(
                                    fontSize: 23, color: Colors.indigo),
                                obscureText: isPassword ? false : true,
                              ),
                              SizedBox(
                                height: height * .02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(value: false, onChanged: (val) {}),
                                  Text(
                                    'Remenber Me',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 17),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Container(
                      width: width * .9,
                      height: height * .1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            focusColor: Colors.transparent,
                            onPressed: () {},
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.green[800],
                              ),
                            ),
                          ),
                          FlatButton(
                            focusColor: Colors.transparent,
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.green[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
