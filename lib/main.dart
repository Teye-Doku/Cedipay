
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


import 'Screens/AuthScreen/Login/login.dart';
import 'Screens/AuthScreen/SignUp/dob.dart';
import 'Screens/home.dart';

import 'dart:async';

void main() {
  runApp(MaterialApp(

    theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
    home: MyApp()
  ));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {

//     FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,

//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         primarySwatch: Colors.redAccent[50],
//       ),

//       // changed Home() to LoginScreen()
//       home:LoginScreen(),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(
      seconds: 3
    ), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, 
        decoration: BoxDecoration(

          color : Colors.white,
                image : DecorationImage(
                  image: AssetImage('assets/images/vector.jpg'),
                  fit: BoxFit.cover),

          
          
        ),
        child: Text(
          "CediPay", style: TextStyle(
            fontSize: 70, 
            fontFamily: "Futura", 
            color: Colors.white
          )
        ),
      )
      
    );
  }
}