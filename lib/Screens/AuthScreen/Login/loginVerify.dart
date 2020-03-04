import 'dart:async';

import 'package:cedipay/Screens/AuthScreen/SignUp/Addcreds.dart';
import 'package:flutter/material.dart';

import 'package:pin_view/pin_view.dart';

class LoginVerify extends StatefulWidget {
  @override
  _LoginVerifyState createState() => _LoginVerifyState();
}


class _LoginVerifyState extends State<LoginVerify> {

  bool _hideResendButton = true ;

  Timer _timer;
  int _start = 10;

  void startTimer() {
     const oneSec = const Duration(seconds: 1);
      _timer = new Timer.periodic(
    oneSec,
    (Timer timer) => setState(
      () {
        if (_start < 1) {
          timer.cancel();
          setState(() {
            _hideResendButton = !_hideResendButton ;
          });
        } else {
          _start = _start - 1;
        }
      },
    ),
  );
}

get _counter {

  return 
  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("0 : $_start" , style: TextStyle(
                fontFamily: "Montserrat", 
                fontSize : 25, 
                fontWeight: FontWeight.bold


              ),),

                  Text("secs", style: TextStyle(
                    fontFamily: "Montserrat"
                  ),)
                ],

              );


}


get _getResendButton {
    return new InkWell(
      child: new Container(
        height: 35,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(32)),
        alignment: Alignment.center,
        child: new Text(
          "Resend OTP",
          style:
              new TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Montserrat'),
        ),
      ),
      onTap: () {

        // setState(() {
        //   _start = 30;

        // });

        // do a .then promise function to set the _start to 10 seconds
        // then you start the startTimer() function;

        //  startTimer();
        
        // Resend you OTP via API or anything
      },
    );
  }

@override
void initState() {
  startTimer();
  
  super.initState();

  
  
  
}

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
                      Text("Verification", style: TextStyle(
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
                      Text("Kindly input the OTP number sent to your ", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Raleway", 
                    

                  ),
                  ),
                    ],
                  ) ,
                  

                  Row(
                    children: <Widget>[
                      Text("Phone via SMS to access your account", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Raleway", 

                  ),)
                    ]
                  )

                ],
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.only(top: 35, left: 15),
           
              
             
          //       child: GestureDetector(
          //         onTap: () => {

          //         },
          //         child: Icon(Icons.arrow_back_ios, color: Colors.white,)
          //         )
               
              
          // ),

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


              

              SizedBox(height: 20),

              _hideResendButton ? _counter : _getResendButton,

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text("0 : $_start" , style: TextStyle(
              //   fontFamily: "Montserrat", 
              //   fontSize : 25, 
              //   fontWeight: FontWeight.bold


              // ),),

              //     Text("secs", style: TextStyle(
              //       fontFamily: "Montserrat"
              //     ),)
              //   ],

              // ),

             Container(
               width: 300,

               child:  PinView (
								count: 5, // describes the field number
								dashPositions: [1,2,3,4], // positions of dashes, you can add multiple
								autoFocusFirstField: false, // defaults to true
								margin: EdgeInsets.all(2), // margin between the fields
								obscureText: true, // describes whether the text fields should be obscure or not, defaults to false
								style: TextStyle (
									// style for the fields
									fontSize: 40.0,
									fontWeight: FontWeight.w500,
                  fontFamily: "Raleway"
								),
								dashStyle: TextStyle (
									// dash style
									fontSize: 18.0,
									color: Colors.blueGrey
								),
								submit: (String pin) {
									// when all the fields are filled
									// submit function runs with the pin
									print(pin);
								}		
							),

             ),

                  

              //    Padding(
              //      padding: EdgeInsets.only(top: 8),
              //      child: Container(
              // width: 320,

              
              // padding: EdgeInsets.all(2.0),
              // child: TextField(
              // autocorrect: true,
              // decoration: InputDecoration(
              //   hintText: '2-2-1-4-7-1',
              //   prefixIcon: Icon(Icons.phone_iphone),
              //   hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Montserrat", fontSize: 14),
              //   filled: true,
              //   fillColor: Colors.white70,
                
              //   enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //       borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    
              //      ),
              //   focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //       borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    
              //   ),
              // ),),
              //      ),
              //    ),

                 Container(
                   margin: EdgeInsets.only(top: 2), 
                   width: 320, 
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Text("", style: TextStyle(
                         fontFamily: "Raleway", 
                         fontSize: 11, 
                         color: Colors.blueGrey
                       ),)
                     ]
                   ),
                 ),
            
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(

                      onTap:(() => {
                        Navigator.push(
                            context,
                          // you change it to OTP() view for IOS version
                          MaterialPageRoute(builder: (context) => AddCreds()),
                  )}),
                      child: Container(
                                     alignment: Alignment.center,
                          width : 180, 
                          height: 45, 
                          
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.all(Radius.circular(22.5)),
                            color : Colors.redAccent,
                          ),

                          child: Text("Verify", style : TextStyle(
                            color : Colors.white, 
                            fontFamily: "Raleway", 
                            fontWeight: FontWeight.bold, 
                            fontSize: 16, 
                            letterSpacing: 0
                          )),
                          
                        ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: <Widget> [
                        Text("Click to resend Again", style: TextStyle(
                          
                          fontFamily: "Raleway" , 
                          fontSize: 12

                        ),), 
                        // Text('Register Now', style: TextStyle(
                        //   color: Colors.red, 
                        //   fontFamily: "Montserrat" , 
                        //   fontSize: 12
                        // ),)
                      ]
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

  @override
void dispose() {
  _timer.cancel();
  super.dispose();
}


}