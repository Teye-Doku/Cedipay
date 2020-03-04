import 'package:cedipay/Screens/AuthScreen/Login/loginVerify.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _phone = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _performLogin() {
      String fn = _phone.text; 
      

      print('login attempt: $fn ');

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
                      Text("SignUp", style: TextStyle(
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
                    fontFamily: "Montserrat", 
                    

                  ),
                  ),
                    ],
                  ) ,
                  

                  Row(
                    children: <Widget>[
                      Text("to access your account", style: TextStyle(
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

                controller: _phone,

                validator: (value) {
                  if(value.isEmpty) {
                    return 'Please enter some text';
                  }

                  return null;
                },
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                prefixIcon: Icon(Icons.phone_iphone),
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

                          child: Text("SignUp", style : TextStyle(
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

            ),
          )

          

      ],
      )
      

    );
  }
}