import 'package:cedipay/Screens/home.dart';
import 'package:cedipay/Screens/timeline.dart';
import 'package:flutter/material.dart';

// datepicker
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';



String dob = "Date of Birth";
class AddInfo extends StatefulWidget {
  @override
  _AddInfoState createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {

  final _fullname = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _performLogin() {
      String fn = _fullname.text; 
      

      print('login attempt: $fn ');

      if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  // Scaffold.of(context)
                  //     .showSnackBar(SnackBar(content: Text('Processing Data')));
                      Navigator.push(
              context,
              // you change it to OTP() view for IOS version
              MaterialPageRoute(builder: (context) => Home()),
                  );
                }

    }

  

  void dob_change () async{

    

                    var datePicked = await DatePicker.showSimpleDatePicker(
                        context,
                      initialDate: DateTime(1994),
                        firstDate: DateTime(1960),
                        lastDate: DateTime(2012),
                        dateFormat: "dd-MMMM-yyyy",
                        locale: DateTimePickerLocale.en_us,

                
              );

              print("$datePicked");

              setState(() =>  {
                dob = "$datePicked"
                
              });
              

              

              // showInSnackBar("$datePicked");

             

              

              
           

  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
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
                      Text("User Profile", style: TextStyle(
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
                      Text("Finish your final step to get access", style: TextStyle(
                    color: Colors.white, 
                    fontFamily: "Raleway", 
                    

                  ),
                  ),
                    ],
                  ) ,
                  

                  Row(
                    children: <Widget>[
                      Text("to your mobile wallet", style: TextStyle(
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
                controller: _fullname,

                validator: (value) {
                  if(value.isEmpty) {
                    return 'Please enter some text';
                  }

                  return null;
                },
                
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Full Name',
                
                prefixIcon: Icon(Icons.person),
                hintStyle: TextStyle(color: Colors.blueGrey, fontFamily: "Raleway", fontSize: 14),
                filled: true,
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                   ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 0.5),
                ),
               ),
              ),
              ),
                 
              ),

              

                  

                 Padding(
                   padding: EdgeInsets.only(top: 8),
                   child: GestureDetector(
                     onTap: () => (dob_change()) ,
                       
                     
                      child: Container(
                      width: 320,
                      height: 55,

              
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(width: 0.5, color: Colors.grey),
                color: Colors.white70,
              ), 


                  child: Row(
                      children: <Widget> [

                        Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Icon(Icons.calendar_today, color: Colors.grey),
                        ), 

                        Text("$dob", style: TextStyle(
                          fontFamily: 'Raleway', 
                          color: Colors.grey, 

                        ),)



                      ]
                  ),
                     ),
                   ),
                 ),

                 SizedBox(height: 20),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("By creating an account you agree to our", style: TextStyle(
                      
                          
                          fontFamily: "Raleway" , 
                          fontSize: 12
                     ),)
                   ],
                 ),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                   Text("Terms of Service and Privacy Policy",style: TextStyle(
                      
                          
                          fontFamily: "Raleway" , 
                          fontSize: 12
                     ),)
                 ],),

                 
            
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: (() => { 
                        _performLogin()
                        }),
                          child: Container(
                          alignment: Alignment.center,
                          width : 180, 
                          height: 45, 
                          
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.all(Radius.circular(22.5)),
                            color : Colors.redAccent,
                          ),

                          child: Text("Submit", style : TextStyle(
                            color : Colors.white, 
                            fontFamily: "Raleway", 
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