import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submini/list/list_subject.dart';
import 'package:submini/widget/app_bar_widget.dart';

import 'package:submini/widget/list_view.dart';

class SubjectDetails extends StatefulWidget {
  SubjectDetails({super.key});

  @override
  State<SubjectDetails> createState() => _SubjectDetailsState();
}

class _SubjectDetailsState extends State<SubjectDetails> {
  final classnameController = TextEditingController();

  final subjectController = TextEditingController();

  List<subjectList> subject_list = List.empty(growable: true);

  Future addsubjectdetails(String class_name, String subject) async {
    await FirebaseFirestore.instance.collection('Subject').add({
      'Class name': class_name,
      'Subject': subject,
    });
  }

  @override
  Future insert() async {
    await addsubjectdetails(
        classnameController.text.trim(), subjectController.text.trim());
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff242C3B),
        appBar: PreferredSize(
          child: AppBarSubjectDetails(
            title: "Subject Details",
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
                    controller: classnameController,
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
                    controller: subjectController,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            String clname = classnameController.text.trim();
                            String sub = subjectController.text.trim();
                            insert();
                            setState(() {
                              if (clname.isNotEmpty && sub.isNotEmpty) {
                                classnameController.text = '';
                                subjectController.text = '';
                                subject_list.add(subjectList(
                                    Class_name: clname, Subject_name: sub));
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
                        Container(
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
                      itemCount: subject_list.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return ListTile(
                          // tileColor: Colors.orange,
                          title: Container(
                            width: 200,
                            height: 100,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.grey, Color(0x363E51)]),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(68)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Class name: ' +
                                                ' ' +
                                                subject_list[index].Class_name,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Subject: ' +
                                                ' ' +
                                                subject_list[index]
                                                    .Subject_name,
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w700,
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
                                                  classnameController.text =
                                                      subject_list[index]
                                                          .Class_name;
                                                  subjectController.text =
                                                      subject_list[index]
                                                          .Subject_name;
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
                                                  subject_list.removeAt(index);
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
