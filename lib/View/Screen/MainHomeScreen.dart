import 'package:doctor_hunt/View/Screen/Doctor%20_details_Screen.dart';
import 'package:doctor_hunt/View/Screen/FavouriteDoctors%20_Screen.dart';
import 'package:doctor_hunt/View/Screen/HomeScreen.dart';
import 'package:doctor_hunt/View/Screen/MyDoctor_Screen.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {

  var selected=0;

  List<Widget> screens = [
    HomeScreen(),
    FavouriteDoctors_Screen(),
    MyDoctor_Screen(),
    DoctorDetail_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: screens[selected],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 74.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3.0,
                      blurRadius: 3.0
                      
                    )
                  ],
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=0;
                        });
                      },
                        child: CircleAvatar(
                           radius: 24.0,
                            backgroundColor: (selected==0)?Color(0xff0EBE7F):Colors.white,
                            child: Container(
                              width: 20.0,
                                height: 20.0,
                                child: Image.asset("img/home.png",color: (selected==0)?Colors.white:Color(0xff858EA9))
                            )
                        )
                      ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=1;
                        });
                      },
                      child: CircleAvatar(
                         radius: 24.0,
                          backgroundColor: (selected==1)?Color(0xff0EBE7F):Colors.white,
                          child: Container(
                          width: 22.0, height: 20.0,
                              child: Image.asset("img/fav.png",color: (selected==1)?Colors.white:Color(0xff858EA9))
                          )
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=2;
                        });
                      },
                      child: CircleAvatar(
                          radius: 24.0,
                          backgroundColor: (selected==2)?Color(0xff0EBE7F):Colors.white,
                          child: Container(
                            width: 26.0,
                            height: 20.0,
                              child: Image.asset("img/record.png",color: (selected==2)?Colors.white:Color(0xff858EA9))
                          )
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          selected=3;
                        });
                      },
                      child: CircleAvatar(
                         radius: 24.0,
                          backgroundColor: (selected==3)?Color(0xff0EBE7F):Colors.white,
                          child: Container(
                              width: 21.0,height: 20.0,
                              child: Image.asset("img/chat.png",color: (selected==3)?Colors.white:Color(0xff858EA9))
                          )
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
