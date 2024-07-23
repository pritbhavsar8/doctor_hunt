import 'package:doctor_hunt/View/Screen/DoctorLive_%20ChatScreen.dart';
import 'package:doctor_hunt/View/Screen/LoginScreen.dart';
import 'package:doctor_hunt/View/Screen/Poplular_DoctorScreen.dart';
import 'package:doctor_hunt/View/Screen/find_doctorScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/bgHome.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
               Stack(              
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 156.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff0EBE7E),
                                Color(0xff07D9AD),
                              ]
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                              children:[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hi Handwerker!",style: TextStyle(
                                        color: Color(0xffFAFAFA),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0,
                                        fontFamily: "Rubik"
                                    ),),
                                    Text("Find Your Doctor",style: TextStyle(
                                        color: Color(0xffFAFAFA),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25.0,
                                        fontFamily: "Rubik"
                                    ),),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: 30.0,
                                  child: Image.asset("img/HomeProfile.png",),
                                )

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      left: 20.0,
                      child: SizedBox(
                        width: 335.0,
                        height: 54.0,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search,color: Color(0xff677294),),
                              hintText: "Search..... ",
                              hintStyle: TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0,
                                  fontFamily: "Rubik"
                              ),
                              suffixIcon: Icon(Icons.clear,color: Color(0xff677294),),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    style: BorderStyle.none,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(6.0),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    style: BorderStyle.none,
                                  )
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // LIVE DOCTOR
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Live Doctors",style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        fontFamily: "Rubik"
                    ),),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                           Stack(
                            children: [
                              Container(
                                width: 116.0,
                                height: 168.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    image: DecorationImage(image: AssetImage("img/doctor1Home.png"),fit: BoxFit.cover)
                                ),),
                              Positioned(
                                top: 22.0,
                                right: 20.0,
                                child: Container(
                                  width: 40.0,
                                  height: 17.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.0),
                                      image: DecorationImage(image: AssetImage("img/live.png"),fit: BoxFit.cover)
                                  ),),
                              ),
          
                            ],
                          ),        
                          SizedBox(width: 5.0,),
                          InkWell(
                            onTap: () {
                               Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) =>DoctorLive_ChatScreen() ,)
                            );
                            },
                            child:  Stack(
                            children: [
                              Container(
                                width: 116.0,
                                height: 168.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    image: DecorationImage(image: AssetImage("img/doctor2Home.png"),fit: BoxFit.cover)
                                ),),
                              Positioned(
                                top: 22.0,
                                right: 20.0,
                                child: Container(
                                  width: 40.0,
                                  height: 17.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.0),
                                      image: DecorationImage(image: AssetImage("img/live.png"),fit: BoxFit.cover)
                                  ),),
                              ),
          
                            ],
                          ),
                          ),
                          SizedBox(width: 2.0,),
                          Container(
                            width: 116.0,
                            height: 168.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                image: DecorationImage(image: AssetImage("img/doctor3Home.png"),fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 113.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("img/blue.png"),fit: BoxFit.fill)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 35.0,bottom: 20.0),
                                child: Image.asset("img/teeth.png",height: 37,width: 33,)
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            height: 113.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("img/green.png"),fit: BoxFit.fill)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 35.0,bottom: 30.0),
                              child: Image.asset("img/heart.png",height: 37,width: 33)
                            ),
                          ),               
                          Container(
                            height: 113.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("img/orange.png"),fit: BoxFit.fill)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 40.0,bottom: 25.0),
                              child: Image.asset("img/eye.png",height: 37,width: 33),
                            ),
                          ),
                          SizedBox(width: 1.0,),
                          Container(
                            height: 113.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("img/red.png"),fit: BoxFit.fill)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0,bottom: 30.0),
                              child: Image.asset("img/body.png")
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          
                  // POPULAR DOCTOR
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Doctor",style: TextStyle(
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            fontFamily: "Rubik"
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: InkWell(
                            onTap: (){
                                Navigator.of(context).push(
                               MaterialPageRoute(builder: (context) => Poplular_DoctorScreen(),)
                              );
                            },
                            child: Text("See all >",style: TextStyle(
                              color: Color(0xff677294),
                              fontWeight: FontWeight.w300,
                              fontSize: 12.0,
                              fontFamily: "Rubik"
                          ),),
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 265.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 265.0,
                            width: 190.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Color(0xffFFFFFF)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height:180.0,
                                  width: 190.0,
                                  child: Image.asset("img/dr.fill.png"),
                                ),
                                Text("Dr.Fillerup Grab",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0,
                                    fontFamily: "Rubik"
                                ),),
                                Text("Medicine Specialist",style: TextStyle(
                                    color: Color(0xff677294),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                SizedBox(height: 8.0,),
                                Container(
                                  width: 80.0,
                                  height: 12.0,
                                  child: Image.asset("img/star.png"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            height: 265.0,
                            width: 190.0,
                            decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height:180.0,
                                  width: 190.0,
                                  child: Image.asset("img/dr.bless.png",fit: BoxFit.fill,),
                                ),
                                Text("Dr. Blessing",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.0,
                                    fontFamily: "Rubik"
                                ),),
                                Text("Dentist Specialist",style: TextStyle(
                                    color: Color(0xff677294),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 80.0,
                                  height: 12.0,
                                  child: Image.asset("img/star.png"),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  // FEATURE DOCTOR
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Feature Doctor",style: TextStyle(
                            color: Color(0xff333333),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            fontFamily: "Rubik"
                        ),),
                        SizedBox(width: 30.0,),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: InkWell(
                            onTap: () {
                                Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) =>find_doctorScreen() ,)
                            );
                            },
                            child: Text("See all >",style: TextStyle(
                                color: Color(0xff677294),
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    padding: EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            width: 96.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("img/like (1).png",height: 9.0,width: 10.0,color: Color(0xff777EA5),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15.0),
                                        SizedBox(width: 5.0,),
                                        Text("3.7",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.0,),
                                CircleAvatar(
                                  radius: 25.0,
                                  child: Image.asset("img/dr.crick.png"),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Dr. Crick",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\$",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff0EBE7E)
                                          ),
                                        ),
                                        TextSpan(
                                          text: " 25.00/ hours",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff677294)
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
          
          
                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            width: 96.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("img/like.png",height: 9.0,width: 10.0,),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15.0),
                                        SizedBox(width: 5.0,),
                                        Text("3.0",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.0,),
                                CircleAvatar(
                                  radius: 25.0,
                                  child: Image.asset("img/dr.stain.png"),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Dr.Strain",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\$",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff0EBE7E)
                                          ),
                                        ),
                                        TextSpan(
                                          text: " 22.00/ hours",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff677294)
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
          
          
                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            width: 112.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("img/like (1).png",height: 9.0,width: 10.0,color: Color(0xff777EA5),),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15.0),
                                        SizedBox(width: 5.0,),
                                        Text("2.9",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.0,),
                                CircleAvatar(
                                  radius: 25.0,
                                  child: Image.asset("img/dr.lachi.png"),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Dr. Lachinet",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\$",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff0EBE7E)
                                          ),
                                        ),
                                        TextSpan(
                                          text: " 29.00/ hours",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff677294)
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
          
          
                              ],
                            ),
                          ),
                          SizedBox(width: 15.0,),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            width: 96.0,
                            height: 140.0,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("img/like (1).png",height: 9.0,width: 10.0,),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.yellow,size: 15.0),
                                        SizedBox(width: 5.0,),
                                        Text("3.7",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 8.0,),
                                CircleAvatar(
                                  radius: 25.0,
                                  child: Image.asset("img/dr.crick.png"),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Dr. Crick",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    fontFamily: "Rubik"
                                ),),
                                RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\$",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff0EBE7E)
                                          ),
                                        ),
                                        TextSpan(
                                          text: " 25.00/ hours",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff677294)
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
          
          
                              ],
                            ),
                          ),
          
          
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

            ],
          ),
          
        ],
      ),
    );
  }
}
