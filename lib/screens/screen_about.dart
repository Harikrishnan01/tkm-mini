import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blue,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 15),
                    child: Row(
                      children: [
                        Text(
                          'About',
                          style: GoogleFonts.caveat(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 260, top: 50),
                            child: Text(
                              'About the Project',
                              style: GoogleFonts.caveat(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300, top: 50),
                            child: Text(
                              "An exam seating arrangement system web application is a software\ntoo designed to facilitate the organization and management of\nseating arrangements for exams or other similar events.\nIt allows administrators to efficiently allocate seats to students\nor participants based on various criteria.",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                fontSize: 25,
                              ),
                            ),
                          )
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
                  SizedBox(
                    height: 80,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 1300,
                        ),
                        child: SizedBox(
                            height: 230,
                            child: VerticalDivider(
                              color: Colors.grey.shade900,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Divider(
                          thickness: 2,
                          indent: 1000,
                          endIndent: 120,
                        ),
                      ),
                    ],
                  ),
                ])));
  }
}
