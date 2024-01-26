
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/About%20Us/constants.dart';
import 'package:maternio_1/About%20Us/data.dart';
import 'package:maternio_1/About%20Us/detail_page.dart';
import 'package:maternio_1/About%20Us/expanded_widget.dart';

import 'package:url_launcher/url_launcher.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                child: Center(
                    child: Text(
                  "ABOUT US",
                  style: TextStyle(
                    fontFamily: 'Party LET',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: gradientStartColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            //pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colors.deepPurpleAccent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/MaternioLogoReavel.gif",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: IconButton(
                  iconSize: 25,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
            //title: Center(child: Text("A b o u t U s")),
            expandedHeight: 300,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                children: [
                  Column(
                    children: [
                      ExpandedWidget(
                          text:
                              "Maternio is an application designed to provide information and support to women during their pregnancy journey and after childbirth. This app is typically available for download on mobile devices and offers a range of features and resources to help expectant mothers navigate pregnancy, prepare for childbirth, track their baby’s growth, provide doctors consultancy, and also baby caretaker service. The purpose of Maternio is to provide women with a comprehensive resource that can help them stay informed about their health, their baby's development, and any changes or symptoms they may experience during pregnancy. Many apps offer features such as personalized pregnancy trackers, nutritional guidance, exercise recommendations, and tools for tracking appointments and medications. In addition to providing helpful information and resources, pregnancy apps can also connect women with online communities of other expectant mothers. This can be a valuable source of support, allowing women to share experiences, ask questions, and receive encouragement and advice from others who are going through similar experiences. Overall, the Maternio app is a helpful tool for expectant mothers, providing them with access to information, resources, and support throughout and after their pregnancy journey."),
                      Container(
                        height: 500,
                        padding: const EdgeInsets.only(left: 32),
                        child: Swiper(
                          itemCount: planets.length,
                          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                          layout: SwiperLayout.STACK,
                          pagination: SwiperPagination(
                            builder: DotSwiperPaginationBuilder(
                              activeColor: gradientStartColor,
                              activeSize: 20,
                            ),
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: (context, a, b) =>
                                            DetailPage(
                                              planetInfo: planets[index],
                                            )));
                              },
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(32)),
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 100,
                                              ),
                                              Text(
                                                planets[index].name,
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 44,
                                                  color: primaryTextColor,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                "Student",
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 23,
                                                  color: primaryTextColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    "Know More",
                                                    style: TextStyle(
                                                      fontFamily: 'Avenir',
                                                      fontSize: 18,
                                                      color: secondaryTextColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: secondaryTextColor,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Image.asset(planets[index].iconImage),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5, // soften the shadow
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/aarypp.jpg',
                                      ),
                                      radius: 30),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: VerticalDivider(color: Colors.black,thickness: 1,),
                                  ),
                                  Flexible(
                                      child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Aary Jadhav",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text("aary.jadhav18@gmail.com"),
                                      ],
                                    ),
                                  )),
                                  SizedBox(width: 15),
                                  InkWell( onTap: ()=> launch("https://www.linkedin.com/in/aary-jadhav-700b21236/"),
                                    child: Container(
                                      height: 40,
                                      child: Image.asset("assets/linkedin.png",fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  SizedBox(width: 5),
                                ],
                              ),
                              height: 100,
                            ),
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5, // soften the shadow
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/devangpp.jpg',
                                      ),
                                      radius: 30),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: VerticalDivider(color: Colors.black,thickness: 1,),
                                  ),
                                  Flexible(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Devang Dhadaniya",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Text("devangdadhaniya7@gmail.com"),
                                          ],
                                        ),
                                      )),
                                  SizedBox(width: 15),
                                  InkWell(onTap: ()=>launch("https://in.linkedin.com/in/devang-dadhaniya-aaa191244"),
                                    child: Container(
                                      height: 40,
                                      child: Image.asset("assets/linkedin.png",fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  SizedBox(width: 5),
                                ],
                              ),
                              height: 100,
                            ),
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5, // soften the shadow
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/snowypp.jpg',
                                      ),
                                      radius: 30),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                    child: VerticalDivider(color: Colors.black,thickness: 1,),
                                  ),
                                  Flexible(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Snowy Fernandes",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Text("aary.jadhav18@gmail.com"),
                                          ],
                                        ),
                                      )),
                                  SizedBox(width: 15),
                                  InkWell(onTap: ()=> launch("https://www.linkedin.com/in/snowy-fernandes-b59195244/"),
                                    child: Container(
                                      height: 40,
                                      child: Image.asset("assets/linkedin.png",fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  SizedBox(width: 5),
                                ],
                              ),
                              height: 100,
                            ),
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5, // soften the shadow
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/ashalpp.jpg',
                                      ),
                                      radius: 30),
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                   child: VerticalDivider(color: Colors.black,thickness: 1,),
                                 ),
                                  Flexible(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Ashal Dabre",
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Text("aary.jadhav18@gmail.com"),
                                          ],
                                        ),
                                      )),
                                  SizedBox(width: 15),
                                  InkWell(onTap: ()=>launch("https://www.linkedin.com/in/ashal-dabre-415597239"),
                                    child: Container(
                                      height: 40,
                                      child: Image.asset("assets/linkedin.png",fit: BoxFit.cover,),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  SizedBox(width: 5),
                                ],
                              ),
                              height: 100,
                            ),
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(35, 10, 35, 0),
                              child: Container(
                                child: Text("Vidyavardhin's Bhausaheb Vartak Polytechnic, Diploma\n   Capstone Project CO6I CPP Group-3 :- Aary Jadhav,\n    Devang Dhadaniya, Snowy Fernandes, Ashal Dabre.",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12),),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("'MATERNIO' A Health & Care App Made in Flutter ",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12),),
                              Image.asset("assets/android.png",width: 18,height: 18,)
                            ],
                          )
                        ],

                      )

                    ],
                  ),  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
