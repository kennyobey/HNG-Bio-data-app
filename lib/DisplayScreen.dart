import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

final String? name, age, email, phone;
HomePage({this.name, this.age,this.email, this.phone, });

  @override
  _HomepageViewState createState() => _HomepageViewState(name!, age!,email!, phone!,  );
}

class _HomepageViewState extends State <HomePage> {

// ignore: non_constant_identifier_names
String? name, age, phone, email;
_HomepageViewState(this.name, this.age, this.email, this.phone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    ],

                  ),
                ),
                SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "These Are Your Bio Data",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.deepOrange,
                          fontFamily: "Montserrat"
                        ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Your name is  $name",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Montserrat"),
                    ),
                    SizedBox(height: 10,),
                    Text(
                     "You are  $age years old" ,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Montserrat"),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Your mail is  $email",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Montserrat"),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Your phone number is  $phone",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "Montserrat"),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 20,
          ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
