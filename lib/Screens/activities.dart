import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: 
        Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              width : MediaQuery.of(context).size.width,
              height : MediaQuery.of(context).size.height ,
              color: Colors.redAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(top: 20, left: 10),
                         child: GestureDetector
                         (child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                         onTap: () => {
                           Navigator.pop(context)
                         },),
                       ),
                      

                      Padding(
                        padding: EdgeInsets.only(top: 20, right: 20),
                        child: Icon(Icons.sort, color : Colors.white),
                      ),
                    ],
                  ),


                  Padding(
                        padding: EdgeInsets.only(top: 20, left:20),
                        child: Text("Insights from ", style: TextStyle(
                          color: Colors.grey[200], 
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 22

                        ),
                        ),

                        
                      ),
                  
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: <Widget>[
                     Text("last week ", style: TextStyle(
                        color: Colors.white, 
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                      ),
                      ),

                      Icon(Icons.arrow_drop_down_circle, color : Colors.white)
                  ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, top : 20),
                  child: 
                     Text("Interest", style: TextStyle(
                        color: Colors.grey[200], 
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 13

                      ),
                     
               
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12, left:20.0),
                  child: Text("GHS 4,980.00", style : TextStyle(
                    fontFamily : 'Montserrat',
                    color : Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize : 30, 
                  )),
                ), 

                Padding(
                  padding:  EdgeInsets.only(left: 15),
                  child: Container(
                    alignment: Alignment.center,
                    width : 120, 
                    height: 40, 
                    
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.all(Radius.circular(20)),
                      color : Colors.white,
                    ),

                    child: Text("Withdraw", style : TextStyle(
                      color : Colors.redAccent, 
                      fontFamily: "Futura", 
                      fontWeight: FontWeight.bold, 
                      fontSize: 14, 
                      letterSpacing: 0
                    )),
                    
                  ),
                ),


                Padding(
                  padding:  EdgeInsets.only(top: 85),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   
                    children : <Widget> [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Earn 8.0% interest per annum", 
                        style :TextStyle(
                          color : Colors.grey[200], 
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12 



                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.error_outline, color: Colors.white, size: 15),
                      )
                    ]
                  ),
                )

                




                  ],
              ),
              // decoration: BoxDecoration(
              //   color : Colors.white,
              //   image : DecorationImage(
              //     image: AssetImage('assets/images/vector.jpg'),
              //     fit: BoxFit.cover),

              //   )
           

              ),


              Container(
                
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.55, 
                margin : EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
                decoration: BoxDecoration(
                  borderRadius :  BorderRadius.only(topLeft: Radius.circular(30)),
                  color: Colors.white
                ),

               child: ListView(
                 children: <Widget> [
                   Padding(
                     padding: EdgeInsets.only(left: 18),
                     child: Text("Interest History", style : TextStyle(
                       fontFamily: "Futura", 
                       color : Colors.grey[600], 
                       fontWeight : FontWeight.bold, 
                       fontSize : 13
                     )),
                   ), 

                   Container(
                     width: MediaQuery.of(context).size.width ,
                     height: 1,
                     margin: EdgeInsets.all(10),
                     color: Colors.grey[300] 

                   ), 

                   Padding(
                     padding:EdgeInsets.only(left : 10, right: 10, bottom: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: <Widget>[

                         Row(
                           
                           children: <Widget>[

                            Container(
                         alignment: Alignment.center,
                         width : 40, 
                         height: 40,
                         decoration : BoxDecoration(
                           color : Color(0xFFEDFEE5), 
                           borderRadius : BorderRadius.all(Radius.circular(20))

                         ), 
                         child: Text(
                           "0.05%", style : TextStyle(
                             color: Color(0xFF5CB238), 
                             fontFamily: 'Montserrat', 
                             fontWeight: FontWeight.bold, 
                             fontSize : 13
                           )
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 8.0),
                         child: Column(
                           children: <Widget> [
                             Text("0.0200", style: TextStyle(
                               color: Color(0xFF5CB238), 
                               fontFamily: 'Montserrat', 
                               fontSize: 16, 
                               fontWeight: FontWeight.bold
                             ),),
                             Text("21 Jan, 2019", style : TextStyle(
                               fontFamily : 'Montserrat',
                               fontSize: 13, 

                             ))
                           ]
                         ),
                       ), 


                         ],),
                       
                      

                       Text("GHS 5200.00", style: TextStyle(
                         fontFamily: 'Montserrat', 
                         fontWeight: FontWeight.w600, 

                       ),
                       ),
                     ],),
                   ), 

                   Container(
                     width: MediaQuery.of(context).size.width ,
                     height: 1,
                     margin: EdgeInsets.all(10),
                     color: Colors.grey[200] 

                   ), 

                   Padding(
                     padding:EdgeInsets.only(left : 10, right: 10, bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: <Widget>[

                         Row(
                           children: <Widget> [
                              Container(
                         alignment: Alignment.center,
                         width : 40, 
                         height: 40,
                         decoration : BoxDecoration(
                           color : Color(0xFFEDFEE5), 
                           borderRadius : BorderRadius.all(Radius.circular(20))

                         ), 
                         child: Text(
                           "0.05%", style : TextStyle(
                             color: Color(0xFF5CB238), 
                             fontFamily: 'Montserrat', 
                             fontWeight: FontWeight.bold, 
                             fontSize : 13
                           )
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Column(
                           children: <Widget> [
                             Text("0.0256", style: TextStyle(
                               color: Color(0xFF5CB238), 
                               fontFamily: 'Montserrat', 
                               fontSize: 16, 
                               fontWeight: FontWeight.bold
                             ),),
                             Text("29 Jan, 2019", style : TextStyle(
                               fontFamily : 'Montserrat',
                               fontSize: 13, 

                             ))
                           ]
                         ),
                       ), 
                           ]
                         ),
                       
                      
                       

                       Text("GHS 6100.00", style: TextStyle(
                         fontFamily: 'Montserrat', 
                         fontWeight: FontWeight.w600, 

                       ),
                       ),
                     ],),
                   ), 

                   Container(
                     width: MediaQuery.of(context).size.width ,
                     height: 1,
                     margin: EdgeInsets.all(10),
                     color: Colors.grey[200] 

                   ), 

                   Padding(
                     padding:EdgeInsets.only(left : 10, right: 10, bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: <Widget>[
                       
                      
                       Row(
                           children: <Widget> [
                              Container(
                         alignment: Alignment.center,
                         width : 40, 
                         height: 40,
                         decoration : BoxDecoration(
                           color : Color(0xFFEDFEE5), 
                           borderRadius : BorderRadius.all(Radius.circular(20))

                         ), 
                         child: Text(
                           "0.04%", style : TextStyle(
                             color: Color(0xFF5CB238), 
                             fontFamily: 'Montserrat', 
                             fontWeight: FontWeight.bold, 
                             fontSize : 13
                           )
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Column(
                           children: <Widget> [
                             Text("0.00124", style: TextStyle(
                               color: Color(0xFF5CB238), 
                               fontFamily: 'Montserrat', 
                               fontSize: 16, 
                               fontWeight: FontWeight.bold
                             ),),
                             Text("02 Feb, 2019", style : TextStyle(
                               fontFamily : 'Montserrat',
                               fontSize: 13, 

                             ))
                           ]
                         ),
                       ), 
                           ]
                         ), 

                       Text("GHS 300.00", style: TextStyle(
                         fontFamily: 'Montserrat', 
                         fontWeight: FontWeight.w600, 

                       ),
                       ),
                     ],),
                   ), 


                   Container(
                     width: MediaQuery.of(context).size.width ,
                     height: 1,
                     margin: EdgeInsets.all(10),
                     color: Colors.grey[200] 

                   ), 

                   Padding(
                     padding:EdgeInsets.only(left : 10, right: 10, bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: <Widget>[
                       
                      
                       Row(
                           children: <Widget> [
                              Container(
                         alignment: Alignment.center,
                         width : 40, 
                         height: 40,
                         decoration : BoxDecoration(
                           color : Color(0xFFEDFEE5), 
                           borderRadius : BorderRadius.all(Radius.circular(20))

                         ), 
                         child: Text(
                           "0.05%", style : TextStyle(
                             color: Color(0xFF5CB238), 
                             fontFamily: 'Montserrat', 
                             fontWeight: FontWeight.bold, 
                             fontSize : 13
                           )
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Column(
                           children: <Widget> [
                             Text("0.0256", style: TextStyle(
                               color: Color(0xFF5CB238), 
                               fontFamily: 'Montserrat', 
                               fontSize: 16, 
                               fontWeight: FontWeight.bold
                             ),),
                             Text("29 Jan, 2019", style : TextStyle(
                               fontFamily : 'Montserrat',
                               fontSize: 13, 

                             ))
                           ]
                         ),
                       ), 
                           ]
                         ),
                       Text("GHS 5000.00", style: TextStyle(
                         fontFamily: 'Montserrat', 
                         fontWeight: FontWeight.w600, 

                       ),
                       ),
                     ],),
                   ), 

                   Container(
                     width: MediaQuery.of(context).size.width ,
                     height: 1,
                     margin: EdgeInsets.all(10),
                     color: Colors.grey[200] 

                   ), 

                   Padding(
                     padding:EdgeInsets.only(left : 10, right: 10, bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       children: <Widget>[
                       
                      
                       Row(
                           children: <Widget> [
                              Container(
                         alignment: Alignment.center,
                         width : 40, 
                         height: 40,
                         decoration : BoxDecoration(
                           color : Color(0xFFEDFEE5), 
                           borderRadius : BorderRadius.all(Radius.circular(20))

                         ), 
                         child: Text(
                           "0.05%", style : TextStyle(
                             color: Color(0xFF5CB238), 
                             fontFamily: 'Montserrat', 
                             fontWeight: FontWeight.bold, 
                             fontSize : 13
                           )
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Column(
                           children: <Widget> [
                             Text("0.0256", style: TextStyle(
                               color: Color(0xFF5CB238), 
                               fontFamily: 'Montserrat', 
                               fontSize: 16, 
                               fontWeight: FontWeight.bold
                             ),),
                             Text("29 Jan, 2019", style : TextStyle(
                               fontFamily : 'Montserrat',
                               fontSize: 13, 

                             ))
                           ]
                         ),
                       ), 
                           ]
                         ),

                       Text("GHS 5000.00", style: TextStyle(
                         fontFamily: 'Montserrat', 
                         fontWeight: FontWeight.w600, 

                       ),
                       ),
                     ],),
                   ), 

                  //  Container(
                  //    width: MediaQuery.of(context).size.width ,
                  //    height: 1,
                  //    margin: EdgeInsets.all(10),
                  //    color: Colors.grey[300] 

                  //  ), 

                   
                 ]
               ),
              )

           
          ],

      )
    );
  }
}