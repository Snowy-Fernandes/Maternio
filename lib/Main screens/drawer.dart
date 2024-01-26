import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:maternio_1/Babysitter/babysittersearch.dart';
import 'package:maternio_1/Main%20screens/home.dart';
import 'package:maternio_1/Main%20screens/login/phone.dart';
import 'package:maternio_1/Main%20screens/profile_selection.dart';
import 'package:maternio_1/doctor/doctorsearch.dart';

import '../Pregnant Women/pred_diet.dart';
import '../Pregnant Women/pregnantmycare.dart';
import '../doctor/doctor_profile.dart';

class Drawer_screen extends StatefulWidget {
  const Drawer_screen({Key? key}) : super(key: key);

  @override
  State<Drawer_screen> createState() => _Drawer_screenState();
}

class _Drawer_screenState extends State<Drawer_screen> {
  String imgsrc='';
  void initState() {
    super.initState();
    getData();
  }
  Future getData() async{
    await FirebaseFirestore.instance.collection("usersData").doc(FirebaseAuth.instance.currentUser!.uid.toString()).get().then((value) async{
      setState((

          ) {
        if(value["Type of Customer"]=="Baby"){

          imgsrc="assets/babypp.png";

        }
        else{

          imgsrc="assets/pregnantpp.png";

        }



      });
    });
    // int currentValue=consumed;
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(FirebaseAuth.instance.currentUser!.displayName.toString(),style: TextStyle(color: Colors.deepPurpleAccent.shade700),),
            accountEmail: Text(FirebaseAuth.instance.currentUser!.phoneNumber.toString(),style: TextStyle(color: Colors.deepPurpleAccent.shade700),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  imgsrc,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.shade700,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.postimg.cc/W4wjLtCK/Maternio-Logo-Reavel.gif"),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Container(
                height: 25,
                child: Image.asset(
                  'assets/doctoricon.png',
                  color: Colors.deepPurpleAccent.shade700,
                )),
            title: Text(
              'Doctors',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => doctorsearch()));
            },
          ),
          ListTile(
            leading: Container(
                height: 25,
                child: Image.asset(
                  'assets/babysittericon.png',
                  color: Colors.deepPurpleAccent.shade700,
                )),
            title: Text(
              'Babysiter',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => babysittersearch()));
            },
          ),
          ListTile(
            leading: Container(
                height: 25,
                child: Image.asset(
                  'assets/mycare.png',
                  color: Colors.deepPurpleAccent.shade700,
                )),
            title: Text(
              'My Care',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => pregnantmycare()));
            },
          ),
         // Divider(thickness: 1,height: 5,color: Colors.black,),
          SizedBox(
            height: 430,
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.deepPurpleAccent.shade700,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyPhone()));
            },
          ),
        ],
      ),
    );
  }
}
