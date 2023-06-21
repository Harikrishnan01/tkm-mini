import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submini/list/list_class.dart';
import 'package:submini/screens/class_details.dart';
// import 'package:submini/list/list_subject.dart';
import 'package:submini/screens/classroom_details.dart';
import 'package:submini/screens/main_page.dart';
// import 'package:submini/widget/app_bar_widget.dart';

// import 'package:submini/widget/list_view.dart';

class AdminLogin extends StatefulWidget {
  AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  List<classList> class_list = List.empty(growable: true);

  Future addsubjectdetails(String class_name, String roll_no) async {
    await FirebaseFirestore.instance.collection('Class').add({
      'Class name': class_name,
      'Roll Number': roll_no,
    });
  }

  @override
  Future insert() async {
    await addsubjectdetails(
        usernameController.text.trim(), passwordController.text.trim());
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://t4.ftcdn.net/jpg/03/73/26/09/360_F_373260949_C49GBDmBKwzfg33ym1wMHRYK7g2cFAHI.jpg"),
              fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 650,
            height: double.infinity,
            child: Column(children: [
              SizedBox(
                height: 250,
              ),
              Text(
                'Sign in',
                style: GoogleFonts.assistant(
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                    color: Colors.black),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Sign in and start managing your seats!',
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 125, left: 125, top: 20),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.pink)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 125, right: 125, top: 20),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.pink)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => ClassDetails()));
                  },
                  child: InkWell(
                    onTap: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: usernameController.text.trim(),
                              password: passwordController.text.trim())
                          .then((value) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => ScreenHomePage()));
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Container(
                        width: 340,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(7)),
                        child: Center(
                          child: Text('LOGIN',
                              style: GoogleFonts.assistant(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
