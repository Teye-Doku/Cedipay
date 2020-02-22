import 'package:cedipay/models/destination_model.dart';
import 'package:flutter/material.dart';

class MerchantCarousel extends StatefulWidget {
  @override
  _MerchantCarouselState createState() => _MerchantCarouselState();
}

class _MerchantCarouselState extends State<MerchantCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Discover Merchants Near Me", style : TextStyle(
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
          SizedBox(height: 5.0),
            Container(
               height: 210.0,
              //  color: Colors.blue,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: destinations.length,
                 itemBuilder: (BuildContext context, int index) {
                   Destination destination = destinations[index];
                   return Container (
                     margin: EdgeInsets.all(5.0),
                     width: 160.0,
                    //  color: Colors.red,
                     child : Stack(
                       alignment: Alignment.topCenter,
                       children : <Widget> [
                         Positioned(
                           bottom: 15.0,
                             child: Container(
                             height: 90.0,
                             width: 180.0,
                             decoration: BoxDecoration(
                               color: Colors.white,
                                borderRadius : BorderRadius.circular(10.0)
                             ),
                             child: Padding(
                               padding: EdgeInsets.all(10.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text('${destination.activities} ', style: TextStyle(
                                     fontSize: 11.0,
                                     fontFamily: 'Montserrat',
                                     fontWeight: FontWeight.w600,
                                     
                                    ),
                                   ),
                                   Text(destination.city, style: TextStyle(
                                     fontFamily: 'Montserrat',
                                     color: Colors.grey,
                                   ),
                                   ),
                                 
                               ],
                               ),
                             )
                             ),
                         ),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                                ),
                                ]

                                ),
                            child: Stack(
                             children: <Widget>[
                               ClipRRect(
                                 borderRadius: BorderRadius.circular(6.0),
                                  child: Image(height: 135.0, 
                                 width: 180.0,
                                 image:AssetImage(destination.imageUrl),
                                 fit: BoxFit.cover,
                                 ),
                               )
                             ],
                           )
                           )
                       ]
                     )
                      
                     );
                 }
               ),
               ),
               

      ],
      

      
      
    );
  }
}