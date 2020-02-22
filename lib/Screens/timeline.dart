import 'package:cedipay/widgets/exclusive_carousel.dart';
import 'package:cedipay/widgets/merchants_carousel.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int currentTab = 0;
  
  @override
  Widget build(BuildContext context) {

    
    
   
    return Scaffold(
      

      body: (

      ListView(

        children: <Widget>[
          Column(
           
            // height: MediaQuery.of(context).size.height / 3,
            children: <Widget>[

              Stack(

                children: <Widget> [
                  Container(
                    alignment: Alignment.center,
                
                width: MediaQuery.of(context).size.width ,
                height:  150,
                decoration: BoxDecoration(
                 
                  color : Colors.redAccent,
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left:15),
                child: Container(
                  
                  margin: EdgeInsets.only(right: 10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    image:DecorationImage (
                     image: AssetImage('assets/prof2.jpg'),
                      fit: BoxFit.cover),
                      boxShadow: [
                      BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.redAccent.withOpacity(0.2),
                      spreadRadius: 5.0)
                  ]
                      
                    )
                  ),

                ),


                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children : <Widget> [
                          Text("Balance", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,

                          ),
                          ),

                          Row(children: <Widget>[
                            Text("GHS", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,
                            

                          ),
                          ),
                          Text("5.00", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize : 25
                            

                          ),
                          ) 

                          ],)
                        ]
                      ),

                      Container(
                        margin: EdgeInsets.only(top:20, right: 10, left: 10),
                        height: 60,
                        width: 2,
                        color : Colors.white
                      ),

                      Column(
                        children: <Widget>[

                          Text("Interest", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,

                          ),
                          ),

                          Row(children: <Widget>[
                            Text("GHS", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,
                            

                          ),
                          ),
                          Text("0.20", style : TextStyle(
                            fontFamily : "Montserrat",
                            color : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize : 25
                            

                          ),
                          ) 

                          ],)
                      ],
                      )

                  ],
                  ),

                ),



                Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Container ( 
                  
                  
                  width : MediaQuery.of(context).size.width - 55,
                  margin: EdgeInsets.only(top: 50, left: 25, right: 25 ),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color : Colors.white,
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 6.0,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5.0)
                ]),

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      // minWidth: 40,
                          onPressed: () {
                              setState((){

                              currentTab = 1;
                     

                    },);
                  },

                  
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Feather.pocket, color: currentTab == 1 ? Colors.redAccent : Colors.grey ), 
                      Text('Add Money', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                      color: currentTab == 1 ? Colors.redAccent : Colors.grey[900],
                      ),)
                    ],
                    ),
                 
                  
                ),

                MaterialButton(
                      // minWidth: 40,
                          onPressed: () {
                              setState((){

                                currentTab = 2;
                     

                    },);
                  },

                  
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Feather.fast_forward, color: currentTab == 2 ? Colors.redAccent : Colors.grey ), 
                      Text('Transfer', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                     color: currentTab == 2 ? Colors.redAccent : Colors.grey[900],
                      ),)
                    ],
                    ),
                 
                  
                ),
                MaterialButton(
                      // minWidth: 40,
                          onPressed: () {
                              setState((){
                                currentTab = 3;
                     

                    },);
                  },

                  
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Feather.smartphone, color: currentTab == 3 ? Colors.redAccent : Colors.grey ), 
                      Text('Airtime', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                      color: currentTab == 3 ? Colors.redAccent : Colors.grey[900],
                      ),)
                    ],
                    ),
                 
                  
                ),

                MaterialButton(
                      // minWidth: 40,
                          onPressed: () {
                              setState((){
                                currentTab = 4;
                     

                    },);
                  },

                  
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Icons.credit_card, color: currentTab == 4 ? Colors.redAccent : Colors.grey[500] ), 
                      Text('Payment', style: TextStyle(fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 10.0,
                      color: currentTab == 4 ? Colors.redAccent : Colors.grey[900],
                      ),)
                    ],
                    ),
                 
                  
                ),


                 
          

          


                

                    

                ],
                )

                ),


              )

                ]

              ),
              SizedBox(
            height: 10,

          ),

          MerchantCarousel(),
          ExclusiveCarousel(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Categories", style : TextStyle(
                  fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                        ),

                ),
              ),

              Icon(Icons.keyboard_arrow_right)
            

          ],
          ),
          SizedBox(height: 10),

          Container(
            
                        height: 110.0,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildIngredientItem(
                                  'Clubs',
                                  Icon(Feather.droplet,
                                      size: 10.0, color: Colors.white),
                                  Colors.redAccent),
                              buildIngredientItem(
                                'Hotels',
                                Icon(Feather.target, size: 18.0, color: Colors.white),
                                Color(0xFF615955)),
                              buildIngredientItem(
                                'Bars',
                                Icon(Feather.box, size: 18.0, color: Colors.white),
                                Colors.teal),
                            buildIngredientItem(
                                'Restaurant',
                                Icon(MaterialCommunityIcons.peanut_outline, size: 18.0, color: Colors.white),
                                Color(0xFF8FC28A)),
                            buildIngredientItem(
                                'Shops',
                                Icon(MaterialCommunityIcons.leaf_maple, size: 18.0, color: Colors.white),
                                Colors.green),
                            buildIngredientItem(
                                'Stations',
                                Icon(MaterialCommunityIcons.flower_tulip_outline, size: 18.0, color: Colors.white),
                                Colors.orange),
                            
                            buildIngredientItem(
                                'Brewed Espresso',
                                Icon(Feather.target, size: 18.0, color: Colors.white),
                                Color(0xFF615955)),
                              buildIngredientItem(
                                'Sugar',
                                Icon(Feather.box, size: 18.0, color: Colors.white),
                                Color(0xFFF39595)),
                                
                            ])),
                          //Line
                        
                         
       

         

          // Container(

          //   height: 80.0,
          //   margin: new EdgeInsets.only(left: 46.0, right: 46),
           
          //   decoration: new BoxDecoration(
          //     color : Color(0xFF333366),
          //     shape: BoxShape.rectangle,
          //     borderRadius: BorderRadius.circular(4.0),
          //     boxShadow: <BoxShadow>[
          //       new BoxShadow(
          //         color: Colors.black12,
          //         blurRadius: 10.0,
          //         offset: new Offset(0.0, 10.0)
          //       )
          //     ]
          //   ),



          // ),
           SizedBox(
            height : 10
          ),
              
              
            ] 
          ),
        ]))

         
           
          
        
      


     

        
     

     
      
    
      
    );

    
  }
  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
    padding: EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: bgColor
          ),
          child: Center(
            child: iconName
          )
        ),
        SizedBox(height: 4.0),
        Container(
          width: 60.0,
          child: Center(
            child: Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'nunito',
                fontSize: 12.0,
                color: Color(0xFFC2C0C0)
              )
            )
          )
        )
      ]
    )
    );
  }
}