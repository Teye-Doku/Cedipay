import 'package:cedipay/models/hotel_model.dart';
import 'package:flutter/material.dart';

class ExclusiveCarousel extends StatefulWidget {
  @override
  _ExclusiveCarouselState createState() => _ExclusiveCarouselState();
}

class _ExclusiveCarouselState extends State<ExclusiveCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Exclusive Deals", style : TextStyle(
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

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount : hotels.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hotels[index];

                return Container (
                  margin: EdgeInsets.all(5.0),
                  width: 220.0,
                  child : Stack(
                       alignment: Alignment.topCenter,
                       children : <Widget> [
                         Positioned(
                           bottom: 15.0,
                             child: Container(
                             height: 90.0,
                             width: 220.0,
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
                                   Text('${hotel.name} ', style: TextStyle(
                                     fontSize: 11.0,
                                     fontFamily: 'Montserrat',
                                     fontWeight: FontWeight.w600,
                                     
                                    ),
                                   ),
                                   Text(hotel.address, style: TextStyle(
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
                                 width: 220.0,
                                 image:AssetImage(hotel.imageUrl),
                                 fit: BoxFit.cover,
                                 ),
                               )
                             ],
                           )
                           )
                       ]
                     )


                );
              },
              
            )
          )
      ],
      
    );
  }
}