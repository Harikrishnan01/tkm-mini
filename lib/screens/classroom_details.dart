// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:submini/list/list_classroom.dart';

// class ClassRoom extends StatefulWidget {
//   ClassRoom({super.key});

//   @override
//   State<ClassRoom> createState() => _ClassRoomState();
// }

// class _ClassRoomState extends State<ClassRoom> {
//   bool? _checkBoxValue = false;
//   bool? _check1 = false;
//   bool? _check2 = false;
//   bool? _check3 = false;
//   bool? _check4 = false;
//   bool? _check5 = false;
//   bool? _check6 = false;
//   bool? _check7 = false;
//   bool? _check8 = false;
//   bool? _check9 = false;
//   bool? _check10 = false;
//   bool? _check11 = false;
//   bool? _check12 = false;
//   bool? _check13 = false;
//   bool? _check14 = false;
//   bool? _check15 = false;
//   bool? _check16 = false;
//   bool? _check17 = false;
//   bool? _check18 = false;
//   bool? _check19 = false;
//   bool? _check20 = false;
//   bool? _check21 = false;
//   bool? _check22 = false;
//   bool? _check23 = false;
//   bool? _check24 = false;
//   bool? _check25 = false;
//   bool? _check26 = false;
//   bool? _check27 = false;
//   bool? _check28 = false;
//   bool? _check29 = false;
//   bool? _check30 = false;
//   bool? _check31 = false;
//   bool? _check32 = false;
//   bool? _check33 = false;
//   bool? _check34 = false;
//   bool? _check35 = false;
//   bool? _check36 = false;
//   bool? _check37 = false;
//   bool? _check38 = false;
//   bool? _check39 = false;
//   bool? _check40 = false;
//   bool? _check41 = false;
//   bool? _check42 = false;
//   bool? _check43 = false;
//   bool? _check44 = false;
//   bool? _check45 = false;
//   bool? _check46 = false;

//   List<classroom> class_room = List.empty(growable: true);
//   final roomnumcontroller = TextEditingController();

//   final blockcontroller = TextEditingController();

//   final norowscontroller = TextEditingController();

//   final nocolscontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xff242C3B),
//         body: Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: NetworkImage(
//                         "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
//                     fit: BoxFit.cover)),
//             child: Row(children: [
//               Container(
//                 width: 1439,
//                 height: double.infinity,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 50, top: 10),
//                           child: Text(
//                             'Class Room Details',
//                             style: GoogleFonts.caveat(
//                                 fontSize: 33,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Divider(
//                       thickness: 2,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 90, top: 30),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check1,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check1 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M101',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check2,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check2 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M102',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _checkBoxValue,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _checkBoxValue = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M103',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check3,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check3 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M104',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check4,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check4 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M105',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check5,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check5 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M106',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check6,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check6 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M201',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check7,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check7 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M202',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check8,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check8 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M203',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check9,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check9 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M204',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check10,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check10 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M205',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check11,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check11 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M206',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check12,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check12 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M301',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check13,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check13 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M302',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check14,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check14 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M303',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check15,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check15 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M304',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check16,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check16 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M305',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check17,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check17 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M306',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check18,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check18 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M401',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check19,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check19 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M402',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check20,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check20 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M403',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check21,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check21 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M404',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check21,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check21 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M405',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check22,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check22 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M406',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check23,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check23 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M501',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check24,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check24 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M502',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check25,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check25 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M503',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check26,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check26 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M504',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check27,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check27 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M505',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 105),
//                                 child: Checkbox(
//                                     value: _check28,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check28 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'M506',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check29,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check29 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C101',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check30,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check30 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C102',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check31,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check31 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C103',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check32,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check32 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C104',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check33,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check33 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C105',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check34,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check34 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C106',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 50),
//                                 child: Checkbox(
//                                     value: _check35,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check35 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C201',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check36,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check36 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C202',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check37,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check37 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C203',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check38,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check38 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C204',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check39,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check39 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C205',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 110),
//                                 child: Checkbox(
//                                     value: _check40,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _check40 = value;
//                                       });
//                                     }),
//                               ),
//                               Text(
//                                 'C206',
//                                 style: TextStyle(fontSize: 25),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 50,
//                           ),
// Row(
//   children: [
//     Padding(
//       padding: const EdgeInsets.only(left: 50),
//       child: Checkbox(
//           value: _check41,
//           onChanged: (value) {
//             setState(() {
//               _check41 = value;
//             });
//           }),
//     ),
//     Text(
//       'C301',
//       style: TextStyle(fontSize: 25),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 110),
//       child: Checkbox(
//           value: _check42,
//           onChanged: (value) {
//             setState(() {
//               _check42 = value;
//             });
//           }),
//     ),
//     Text(
//       'C302',
//       style: TextStyle(fontSize: 25),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 110),
//       child: Checkbox(
//           value: _check43,
//           onChanged: (value) {
//             setState(() {
//               _check43 = value;
//             });
//           }),
//     ),
//     Text(
//       'C303',
//       style: TextStyle(fontSize: 25),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 110),
//       child: Checkbox(
//           value: _check44,
//           onChanged: (value) {
//             setState(() {
//               _check44 = value;
//             });
//           }),
//     ),
//     Text(
//       'C304',
//       style: TextStyle(fontSize: 25),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 110),
//       child: Checkbox(
//           value: _check45,
//           onChanged: (value) {
//             setState(() {
//               _check45 = value;
//             });
//           }),
//     ),
//     Text(
//       'C305',
//       style: TextStyle(fontSize: 25),
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 110),
//       child: Checkbox(
//           value: _check46,
//           onChanged: (value) {
//             setState(() {
//               _check46 = value;
//             });
//           }),
//     ),
//     Text(
//       'C306',
//       style: TextStyle(fontSize: 25),
//     ),
//   ],
// ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ])));
// }

// Checkbox CheckBox() {
//   return Checkbox(
//       value: _checkBoxValue,
//       onChanged: (Value) => CheckboxChanged(Value, index + 1));
// }
//}
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> selectedValues = [];

  void onCheckboxValueChanged(bool newValue, String value) {
    setState(() {
      if (newValue) {
        selectedValues.add(value);
      } else {
        selectedValues.remove(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            String value = 'M40${index + 1}';
            return CheckboxListTile(
              title: Text(value),
              value: selectedValues.contains(value),
              onChanged: (bool? newValue) {
                if (newValue != null) {
                  onCheckboxValueChanged(newValue, value);
                }
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Print the selected values
          print(selectedValues);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
