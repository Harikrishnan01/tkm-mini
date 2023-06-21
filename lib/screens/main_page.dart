import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submini/list/list_timetable.dart';
import 'package:submini/screens/admin_login.dart';
import 'package:submini/screens/class_details.dart';
import 'package:submini/screens/classroom_details.dart';
import 'package:submini/screens/screen_about.dart';
import 'package:submini/screens/screen_output.dart';
import 'package:submini/screens/subject_details.dart';
import 'package:submini/screens/timetable.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHomePage extends StatelessWidget {
  ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 10),
                      child: Text(
                        'DASH',
                        style: GoogleFonts.caveat(
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 90, top: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScreenHomePage()));
                        },
                        child: Text(
                          'Home',
                          style: GoogleFonts.caveat(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90, top: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ScreenAbout()));
                        },
                        child: Text(
                          'About',
                          style: GoogleFonts.caveat(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 80, top: 10),
                      child: InkWell(
                        onTap: () {
                          FirebaseAuth.instance.signOut().then((value) => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => AdminLogin()))
                              });
                        },
                        child: Text(
                          'Logout',
                          style: GoogleFonts.caveat(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 300, top: 90),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                SubjectDetails()));
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 120,
                                    //color: Colors.green[200],
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://static.thenounproject.com/png/3282617-200.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 300, top: 5),
                                child: Text('SUBJECT',
                                    style: GoogleFonts.lexendDeca(
                                      fontSize: 30,
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90, left: 50),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 300,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) => MyHomePage()));
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 120,
                                      //color: Colors.green[200],
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              // image: AssetImage(
                                              //     'assets/images/classroom image.jpeg')
                                              image: NetworkImage(
                                                  "https://cdn4.iconfinder.com/data/icons/soleicons-line-vol-03/64/google_classroom_learning_online_school_assignments_grade-512.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 300, top: 5),
                                  child: Text('CLASS ROOM',
                                      style: GoogleFonts.lexendDeca(
                                        fontSize: 30,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        indent: 145,
                        endIndent: 990,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: SizedBox(
                            height: 230,
                            child: VerticalDivider(
                              color: Colors.grey.shade900,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 300,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (ctx) => TimeTable()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                            width: 160,
                            height: 120,
                            //color: Colors.green[200],
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://static.thenounproject.com/png/2864385-200.png"))),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 300,
                      ),
                      child: Text('TIMETABLE',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 30,
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 270,
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (ctx) => ScreenClassPage()));
                          },
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => ClassDetails()));
                            },
                            child: Container(
                              width: 160,
                              height: 120,
                              //color: Colors.green[200],
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.iconscout.com/icon/free/png-256/free-class-room-student-study-group-communicatioon-education-5-21679.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 300,
                        ),
                        child: Text('CLASS ',
                            style: GoogleFonts.lexendDeca(
                              fontSize: 30,
                            )),
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 50, top: 130),
                //   child: InkWell(
                //     onTap: () {
                //       Navigator.of(context).push(MaterialPageRoute(
                //           builder: (ctx) => ScreenOutputPage()));
                //     },
                //     child: Container(
                //       width: 150,
                //       height: 70,
                //       decoration: BoxDecoration(
                //           color: Colors.green.shade100,
                //           borderRadius: BorderRadius.circular(20)),
                //       child: Center(
                //           child: Text(
                //         'Generate Seating',
                //         style: GoogleFonts.poppins(
                //             fontSize: 15,
                //             fontWeight: FontWeight.w400,
                //             color: Colors.black),
                //       )),
                //     ),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
