import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';


class Dob extends StatefulWidget {
  @override
  _DobState createState() => _DobState();

  
}

class _DobState extends State<Dob> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  

void showInSnackBar(String value) {
    _scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text(value)));
}
  @override
   Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("open picker dialog"),
            onPressed: () async {

              var datePicked = await DatePicker.showSimpleDatePicker(
                context,
                initialDate: DateTime(1994),
                firstDate: DateTime(1960),
                lastDate: DateTime(2012),
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.en_us,

                
              );

              print("$datePicked");

              showInSnackBar("$datePicked");

             

              

              
            },
            
          ),
          // RaisedButton(
          //   child: Text("Show picker widget"),
          //   onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (_) => WidgetPage()));
          //   },
          // )
        ],
      ),
    );
  }
}

// class WidgetPage extends StatefulWidget {
//   @override
//   _WidgetPageState createState() => _WidgetPageState();
// }

// class _WidgetPageState extends State<WidgetPage> {
//   DateTime _selectedDate;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 28),
//             child: DatePickerWidget(
//               firstDate: DateTime(1960),
//               lastDate: DateTime(2002, 1, 1),
//               initialDate: DateTime(1994),
//               dateFormat: "dd-MMMM-yyyy",
//               onChange: (DateTime newDate, _) => {
//                 _selectedDate = newDate,
//                 print(_selectedDate)
//                 },
//               pickerTheme: DateTimePickerTheme(
//                   itemTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }