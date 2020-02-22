
import 'package:cedipay/Screens/activities.dart';
import 'package:cedipay/Screens/receive.dart';
import 'package:cedipay/Screens/scanPay.dart';
import 'package:cedipay/Screens/timeline.dart';
import 'package:flutter/material.dart';


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
    return Scaffold(

      backgroundColor: Colors.white,
      
      body : PageStorage(
        child: currentScreen, 
        bucket: bucket
      ),

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