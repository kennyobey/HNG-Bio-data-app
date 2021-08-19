import 'package:bio_data/DisplayScreen.dart';
//import 'package:bio_data/TableData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      initialRoute: '/',
            routes: {
              '/sign': (context) => Details(),
              '/welcome': (context) => HomePage(),
            },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Details(),
    ); 
  }
}

// ignore: must_be_immutable
class Details extends StatelessWidget {

  String? name, email, age, phone; 

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
                  padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
                  child: Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 60,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                SizedBox(
                  height: 20,
                ),
              
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextFormField(
            
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                  ),
                  onChanged: (text){
                      name = text;
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextFormField(
                   onChanged: (text){
                      age = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Age',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                   onChanged: (text){
                      email = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                   onChanged: (text){
                      phone = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 30,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.deepOrangeAccent,
              color: Colors.deepOrange,
              elevation: 1.0,
              child: GestureDetector(
                  onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: 
                      (context)=> 
                      HomePage(name: name, age: age, 
                      email: email, phone: phone,)));
                    },
                child: Center(
                  child: InkWell(
                  
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 15,
          ),
    
        ],
      ),
    );
  }
}
