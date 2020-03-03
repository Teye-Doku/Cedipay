import 'package:cedipay/Screens/AuthScreen/Login/loginVerify.dart';
import 'package:cedipay/Screens/AuthScreen/SignUp/signup.dart';
import 'package:flutter/material.dart';

import 'otp.dart';

class LoginScreen extends StatefulWidget {
  @override

  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {

    void _performLogin() {
      String phoneNum = _phoneController.text; 
      String password = _passwordController.text;

      print('login attempt: $phoneNum with $password');

      if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  // Scaffold.of(context)
                  //     .showSnackBar(SnackBar(content: Text('Processing Data')));
                      Navigator.push(
              context,
              // you change it to OTP() view for IOS version
              MaterialPageRoute(builder: (context) => LoginVerify()),
                  );
                }

    }
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
                      Text("Welcome Back!", style: TextStyle(
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
                      Text("Provide your Phone number and Password", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Raleway", 
                    

                  ),
                  ),
                    ],
                  ) ,
                  

                  Row(
                    children: <Widget>[
                      Text("to access your account", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Raleway", 

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

              child: Form(
                key: _formKey,
                child:Column(

                children: <Widget>[


                  Padding(
                   padding: EdgeInsets.only(top: 50),
                   child: Container(
              width: 320,
              padding: EdgeInsets.all(2.0),
              child: TextFormField(

                validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
                controller: _phoneController,
              // autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon: Icon(Icons.phone_iphone),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Raleway", fontSize: 14),
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
              child: TextFormField(
                controller: _passwordController, obscureText: true,
                validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
              // autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Raleway", fontSize: 14),
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

                 Container(
                   margin: EdgeInsets.only(top: 2), 
                   width: 320, 
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: <Widget>[
                       Text("Forget Password?", style: TextStyle(
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
                      onTap: (() => { 
                        
                        _performLogin(),
                        }),
                          child: Container(
                          alignment: Alignment.center,
                          width : 180, 
                          height: 45, 
                          
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.all(Radius.circular(22.5)),
                            color : Colors.redAccent,
                          ),

                          child: Text("Login", style : TextStyle(
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
                        Text("Don't have an account? ", style: TextStyle(
                          
                          fontFamily: "Raleway" , 
                          fontSize: 12

                        ),), 
                        
                          FlatButton(onPressed: () => {
                            Navigator.push(
                          context,
              // you change it to OTP() view for IOS version
                            MaterialPageRoute(builder: (context) => Signup()),
                              )}

                          , child: 
                          Text('Register Now', style: TextStyle(
                            color: Colors.red, 
                            fontFamily: "Raleway" , 
                            fontSize: 12
                          ),
                          
                          
                          )),
                       
                      ]
                    ),
                  )
                ],

                

              ),
              ),

            ),
          )

          

      ],
      )
      

    );
  }
}