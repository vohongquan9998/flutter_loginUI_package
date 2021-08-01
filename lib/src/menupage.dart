import 'package:flutter/material.dart';
import 'package:flutter_login_package/src/loginWidget_2.dart';
import 'package:flutter_login_package/src/loginWidget_1.dart';
import 'package:flutter_login_package/src/loginWidget_3.dart';
import 'package:flutter_login_package/src/loginWidget_4.dart';
import 'package:flutter_login_package/src/loginWidget_5.dart';
import 'package:flutter_login_package/src/loginWidget_6.dart';

class MenuPage extends StatelessWidget {
  List<String> catagory = [
    'Jewel Candy Factory',
    'Diamond Inc.',
    'Aquarium',
    'Street Style',
    'Life Tea',
    'Metro Social',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          child: ListView.builder(
            itemCount: catagory.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => checkPage(index))),
                  child: Container(
                    width: width,
                    height: height * .1,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        catagory[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget checkPage(int i) {
    switch (i) {
      case 0:
        return SocialLogin();
      case 1:
        return MechanicPage();
      case 2:
        return WaterStyleLogin();
      case 3:
        return StreetStyle();
      case 4:
        return GreenTea();
      case 5:
        return MetroSocial();
    }
  }
}
