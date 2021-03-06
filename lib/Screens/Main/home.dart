
import 'package:cedipay/Screens/Subs/activities.dart';
import 'package:cedipay/Screens/Main/receive.dart';
import 'package:cedipay/Screens/Main/scanPay.dart';
import 'package:cedipay/Screens/Main/timeline.dart';
import 'package:flutter/material.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Properties

  int currentTab = 1;

  

  final List<Widget> screens = [
    Timeline(),
    Receive(),
    ScanPay(),
    Activities()
  ];

  Widget currentScreen = Timeline();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {

     FlutterStatusbarcolor.setStatusBarColor(Colors.redAccent);

    return Scaffold(

      backgroundColor: Colors.white,
      
      body : PageStorage(
        child: currentScreen, 
        bucket: bucket
      ),

      // Material design style
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_basket),
        backgroundColor: Colors.redAccent,
        onPressed: () {
          setState((){
                      currentScreen =ScanPay();
                      currentTab = 2;

                    },);

        },
      ),


      // float with border and icon
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.shopping_basket, color: Colors.redAccent),
        
      //   shape: CircleBorder(
          
      //     side: BorderSide(color: Colors.pink, width: 4.0),
      //   ),
      //   backgroundColor: Colors.white,
      //   onPressed: () {
      //     setState((){
      //                 currentScreen =ScanPay();
      //                 currentTab = 2;

      //               },);

      //   },
      // ),


      // floatingActionButton: Transform.scale(scale: 1.5,
      // child: FloatingActionButton.extended(

      //   label: Text("Pay", style: TextStyle(
      //     fontFamily : "Montserrat",
      //     color : Colors.redAccent,
      //     fontWeight: FontWeight.bold,
      //   )),

       
        
        
      //   shape: CircleBorder(
          
      //     side: BorderSide(color: Colors.pink, width: 4.0),
      //   ),
      //   backgroundColor: Colors.white,
      //   onPressed: () {
      //     setState((){
      //                 currentScreen =ScanPay();
      //                 currentTab = 2;

      //               },);

      //   },
      // ),
      // ),

      


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      
      bottomNavigationBar: BottomAppBar(
        
        
        shape: CircularNotchedRectangle(),
        child: Container (
          
          width:  MediaQuery.of(context).size.width,

          height: 60,
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
            Row(
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState((){
                      currentScreen =Timeline();
                      currentTab = 1;

                    },);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Icons.home, color: currentTab == 1 ? Colors.redAccent : Colors.grey ), 
                      Text('Home', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      color: currentTab == 1 ? Colors.redAccent : Colors.grey[900]),
                      )
                    ],
                    ),
                  )
                  
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState((){
                      currentScreen =ScanPay();
                      currentTab = 2;

                    },);
                  },

                 
                    child: Padding(
                      padding: EdgeInsets.only(top: 25, left: 22),
                      child: Column(
                         mainAxisAlignment:MainAxisAlignment.center,
                         children: <Widget>[
                        // Icon(Icons.airplanemode_inactive, color: currentTab == 1 ? Colors.blue : Colors.grey ), 
                        Text('Scan & Pay', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      color: currentTab == 2 ? Colors.redAccent : Colors.grey[900]),
                        )
                      ],
                      ),
                    ),
                
                  
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState((){
                      currentScreen =Receive();
                      currentTab = 3;

                    },);
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Icons.airplay, color: currentTab == 3 ? Colors.redAccent : Colors.grey ), 
                      Text('Receive', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      color: currentTab == 3 ? Colors.redAccent : Colors.grey[900]),
                      )
                    ],
                    ),
                  )
                  
                ),

                
              ],
              
            )

          ]
          )
          
        ) 

      ),
      
    );
  }
}