import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submini/list/list_timetable.dart';
import 'package:submini/widget/app_bar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:submini/widget/list_view.dart';

class TimeTable extends StatefulWidget {
  TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  List<timetable> time_table = List.empty(growable: true);
  final examdatecontroller = TextEditingController();

  final sessioncontroller = TextEditingController();

  final subjectcontroller = TextEditingController();

  final classnamecontroller = TextEditingController();

  Future addtimetabledetails(String _classname, String _session,
      String _subject, String _examdate) async {
    await FirebaseFirestore.instance.collection('timetable').add({
      'Class-Name': _classname,
      'Session': _session,
      'Subject': _subject,
      'Exam-Date': _examdate,
    });
  }

  @override
  Future insert() async {
    await addtimetabledetails(
      classnamecontroller.text.trim(),
      sessioncontroller.text.trim(),
      subjectcontroller.text.trim(),
      examdatecontroller.text.trim(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff242C3B),
        appBar: PreferredSize(
          child: AppBarSubjectDetails(
            title: "TimeTable",
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
                    controller: classnamecontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter Class name',
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
                      controller: sessioncontroller,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'Enter Session',
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
                    controller: subjectcontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter subject',
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
                    controller: examdatecontroller,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Enter Exam Date',
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
                            String clname = classnamecontroller.text.trim();
                            String exdate = examdatecontroller.text.trim();
                            String sub = subjectcontroller.text.trim();
                            String sess = sessioncontroller.text.trim();
                            insert();
                            setState(() {
                              if (clname.isNotEmpty &&
                                  exdate.isNotEmpty &&
                                  sub.isNotEmpty &&
                                  sess.isNotEmpty) {
                                classnamecontroller.text = '';
                                examdatecontroller.text = '';
                                subjectcontroller.text = '';
                                sessioncontroller.text = '';
                                time_table.add(timetable(
                                  classname: clname,
                                  session: sess,
                                  subject: sub,
                                  examdate: exdate,
                                ));
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
                            String clname = classnamecontroller.text.trim();
                            String exdate = examdatecontroller.text.trim();
                            String sub = subjectcontroller.text.trim();
                            String sess = sessioncontroller.text.trim();
                            setState(() {
                              if (clname.isNotEmpty &&
                                  exdate.isNotEmpty &&
                                  sub.isNotEmpty &&
                                  sess.isNotEmpty) {
                                classnamecontroller.text = '';
                                examdatecontroller.text = '';
                                subjectcontroller.text = '';
                                sessioncontroller.text = '';
                                time_table.add(timetable(
                                    examdate: exdate,
                                    session: sess,
                                    classname: clname,
                                    subject: sub));
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
                      itemCount: time_table.length,
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
                                            'Class name:' +
                                                ' ' +
                                                time_table[index].classname,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Session:' +
                                                ' ' +
                                                time_table[index].session,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Subject:' +
                                                ' ' +
                                                time_table[index].subject,
                                            style: GoogleFonts.poppins(
                                                // fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Exam Date: ' +
                                                ' ' +
                                                time_table[index].examdate,
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
                                                  classnamecontroller.text =
                                                      time_table[index]
                                                          .classname;
                                                  sessioncontroller.text =
                                                      time_table[index].session;
                                                  subjectcontroller.text =
                                                      time_table[index].subject;
                                                  examdatecontroller.text =
                                                      time_table[index]
                                                          .examdate;
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
                                                  time_table.removeAt(index);
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
