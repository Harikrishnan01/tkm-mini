import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submini/list/list_classroom.dart';
import 'package:submini/list/list_timetable.dart';
import 'package:submini/widget/app_bar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:submini/widget/list_view.dart';

class ClassRoom extends StatefulWidget {
  ClassRoom({super.key});

  @override
  State<ClassRoom> createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  List<classroom> class_room = List.empty(growable: true);
  final roomnumcontroller = TextEditingController();

  final blockcontroller = TextEditingController();

  final norowscontroller = TextEditingController();

  final nocolscontroller = TextEditingController();

  Future addtimetabledetails(String _roomnum, String _block, String _noofrows,
      String _noofcols) async {
    await FirebaseFirestore.instance.collection('Class Room').add({
      'Room Number': _roomnum,
      'Block': _block,
      'No Of Rows': _noofrows,
      'No Of Columns': _noofcols,
    });
  }

  @override
  Future insert() async {
    await addtimetabledetails(
      roomnumcontroller.text.trim(),
      blockcontroller.text.trim(),
      norowscontroller.text.trim(),
      nocolscontroller.text.trim(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff242C3B),
        appBar: PreferredSize(
          child: AppBarSubjectDetails(
            title: "Class Room",
          ),
          preferredSize: Size.fromHeight(40),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 102, 100, 100),
                        Color(0x363E51)
                      ],
                    ),
                  ),
                  child: TextField(
                    controller: roomnumcontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter Room Number',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 102, 100, 100),
                          Color(0x363E51)
                        ],
                      ),
                    ),
                    child: TextField(
                      controller: blockcontroller,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'Enter block',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 102, 100, 100),
                        Color(0x363E51)
                      ],
                    ),
                  ),
                  child: TextField(
                    controller: norowscontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter number of rows',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 102, 100, 100),
                        Color(0x363E51)
                      ],
                    ),
                  ),
                  child: TextField(
                    controller: nocolscontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter no of Columns',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            String roomnum = roomnumcontroller.text.trim();
                            String _block = blockcontroller.text.trim();
                            String no_rows = norowscontroller.text.trim();
                            String no_cols = nocolscontroller.text.trim();
                            insert();
                            setState(() {
                              if (roomnum.isNotEmpty &&
                                  _block.isNotEmpty &&
                                  no_rows.isNotEmpty &&
                                  no_cols.isNotEmpty) {
                                roomnumcontroller.text = '';
                                blockcontroller.text = '';
                                norowscontroller.text = '';
                                nocolscontroller.text = '';

                                class_room.add(classroom(
                                    roomnum: roomnum,
                                    block: _block,
                                    norows: no_rows,
                                    nocols: no_cols));
                              }
                            });
                          },
                          child: Container(
                            width: 90,
                            height: 85,
                            //color: Colors.grey,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [Colors.grey, Color(0x363E51)])),
                            child: Center(
                                child: Text(
                              'Save',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            String roomnum = roomnumcontroller.text.trim();
                            String _block = blockcontroller.text.trim();
                            String no_rows = norowscontroller.text.trim();
                            String no_cols = nocolscontroller.text.trim();
                            //insert();
                            setState(() {
                              if (roomnum.isNotEmpty &&
                                  _block.isNotEmpty &&
                                  no_rows.isNotEmpty &&
                                  no_cols.isNotEmpty) {
                                nocolscontroller.text = '';
                                roomnumcontroller.text = '';
                                norowscontroller.text = '';
                                blockcontroller.text = '';
                                class_room.add(classroom(
                                    roomnum: roomnum,
                                    block: _block,
                                    norows: no_rows,
                                    nocols: no_cols));
                              }
                            });
                          },
                          child: Container(
                            width: 90,
                            height: 85,
                            //color: Colors.grey,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                    colors: [Colors.grey, Color(0x363E51)])),
                            child: Center(
                                child: Text(
                              'Edit',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 900,
                  child: ListView.builder(
                      itemCount: class_room.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return ListTile(
                          // tileColor: Colors.orange,
                          title: Container(
                            width: 200,
                            height: 130,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey, Color(0x363E51)]),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(68)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40, top: 15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Room Number:' +
                                                ' ' +
                                                class_room[index].roomnum,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Block:' +
                                                ' ' +
                                                class_room[index].block,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Number of Rows:' +
                                                ' ' +
                                                class_room[index].norows,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Number of Columns: ' +
                                                ' ' +
                                                class_room[index].nocols,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  nocolscontroller.text =
                                                      class_room[index].nocols;
                                                  blockcontroller.text =
                                                      class_room[index].block;
                                                  norowscontroller.text =
                                                      class_room[index].norows;
                                                  roomnumcontroller.text =
                                                      class_room[index].roomnum;
                                                });
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  class_room.removeAt(index);
                                                });
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ));
  }
}
