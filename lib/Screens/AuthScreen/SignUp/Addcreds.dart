import 'package:cedipay/Screens/AuthScreen/SignUp/AddInfo.dart';
import 'package:flutter/material.dart';

class AddCreds extends StatefulWidget {
  @override
  _AddCredsState createState() => _AddCredsState();
}

class _AddCredsState extends State<AddCreds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: <Widget>[

          Container(

            alignment: Alignment.topLeft,
            
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color : Colors.white,
                image : DecorationImage(
                  image: AssetImage('assets/images/vector.jpg'),
                  fit: BoxFit.cover),

                ),
           

              

            child: Padding(
              padding: EdgeInsets.only(top: 120, left: 20),
              child: Column (
                
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Add Creds!", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Futura", 
                    fontSize: 40, 
                    fontWeight: FontWeight.bold

                  ),
                  ), 
                    ],

                  ),

                  Row (
                    children: <Widget>[
                      Text("Kindly fill in your information", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Montserrat", 
                    

                  ),
                  ),
                    ],
                  ) ,
                  

                  Row(
                    children: <Widget>[
                      Text("to move to the next step", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Montserrat", 

                  ),)
                    ]
                  )

                ],
              ),
            ),
          ),

          SingleChildScrollView(
                      child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              // color: Colors.white, 
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),

              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))

              ),

              child:Column(

                children: <Widget>[


                  Padding(
                   padding: EdgeInsets.only(top: 50),
                   child: Container(
              width: 320,
              padding: EdgeInsets.all(2.0),
              child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Montserrat", fontSize: 14),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                   ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
               ),
              ),
              ),
                 
              ),

              Padding(
                   padding: EdgeInsets.only(top: 8),
                   child: Container(
              width: 320,
              padding: EdgeInsets.all(2.0),
              child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Montserrat", fontSize: 14),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                   ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                ),
               ),
              ),
              ),
                 
              ),

                  

                 Padding(
                   padding: EdgeInsets.only(top: 8),
                   child: Container(
              width: 320,

              
              padding: EdgeInsets.all(2.0),
              child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.vpn_key),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Montserrat", fontSize: 14),
                filled: true,
                fillColor: Colors.white70,
                
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    
                   ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    
                ),
              ),),
                   ),
                 ),

                 
            
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: (() => { 
                        Navigator.push(
                            context,
                          // you change it to OTP() view for IOS version
                          MaterialPageRoute(builder: (context) => AddInfo()),
                       )}),
                          child: Container(
                          alignment: Alignment.center,
                          width : 180, 
                          height: 45, 
                          
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.all(Radius.circular(22.5)),
                            color : Colors.redAccent,
                          ),

                          child: Text("Next", style : TextStyle(
                            color : Colors.white, 
                            fontFamily: "Montserrat", 
                            fontWeight: FontWeight.bold, 
                            fontSize: 16, 
                            letterSpacing: 0
                          )),
                          
                        ),
                    ),
                  ),

                  
                ],

                

              ),

            ),
          )

          

      ],
      )
      

    );
  }
}