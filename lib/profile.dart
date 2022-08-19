import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:switch_button/switch_button.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                const BoxShadow(
                  blurRadius: 5,
                ),
              ]),
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Image.asset(
                'assets/luis.jpg',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 15,
                  ),
                  Text(
                    "Dac Huy Nguen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Lorem ipseum",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54)),
                  SizedBox(height: 10),
                  Row(children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: MediaQuery.of(context).size.width * 0.005,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text("SIGN OUT",
                                  style: TextStyle(color: Colors.black54)),
                            ),
                          ],
                        )),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

//this codes comes after the settings...
//Center(
/*child: SwitchButton(
        value: state,
        onToggle: (val) {
          setState(() {
            state = val;
          });
        },
        child: Text("Switch Button"),
      ),*/

//Here, the class will be turned to a StatefulWidget
//bool state = false;
