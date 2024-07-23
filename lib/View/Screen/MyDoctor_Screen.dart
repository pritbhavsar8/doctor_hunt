import 'package:doctor_hunt/View/Screen/MainHomeScreen.dart';
import 'package:doctor_hunt/Widgets/SecondaryButton.dart';
import 'package:flutter/material.dart';

class MyDoctor_Screen extends StatefulWidget {
  const MyDoctor_Screen({Key? key}) : super(key: key);

  @override
  State<MyDoctor_Screen> createState() => _MyDoctor_ScreenState();
}

class _MyDoctor_ScreenState extends State<MyDoctor_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 20.0),
              Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => MainHomeScreen(),)
                            );
                          },
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Image.asset("img/Chevron Right.png"),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Text("My Doctors",style: TextStyle(
                            color: Color(0xff222222),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            fontFamily: "Rubik"
                        ),),
                      ],
                    ),
                  ),
                   SizedBox(height: 10.0,),
                    SizedBox(
                      width: 335.0,
                      height: 54.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search,color: Color(0xff677294),),
                          hintText: "search",
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
                          ),

                        ),
                      )
                  ),
                SizedBox(height: 30.0,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.0,),
                  Column(
                    children: [
                      Container(
                        width: 335.0,
                        height: 200.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 92.0,
                                  width: 87.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("img/finddoctor1.png"),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Container(
                                  height: 120.0,
                                  width: 220.0,
                                  decoration: BoxDecoration(
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text("Dr. Tranquilli",style: TextStyle(
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18.0,
                                              color: Color(0xff333333),
                                            ),),
                                          ),
                                          Image.asset("img/like.png",width: 19.0,height: 17.0,),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text("Tooths Dentist",style: TextStyle(
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13.0,
                                          color: Color(0xff0EBE7F),

                                        ),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text("7 Years experience",style: TextStyle(
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          color: Color(0xff677294),
                                        ),),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0 ,),
                                          Text("87%",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),),
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0),
                                          Text("69 Patient Stories",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),)

                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Next Available",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                      color: Color(0xff0EBE7F),
                                    ),),
                                    Text("10:00 AM tomorrow",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                      color: Color(0xff677294),
                                    ),)
                                  ],
                                ),
                                SecondaryButton(
                                  onTap: (){},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 335.0,
                        height: 200.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 92.0,
                                  width: 87.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("img/finddoctor2.png"),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Container(
                                  height: 120.0,
                                  width: 220.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         // Padding(
                                         //   padding: const EdgeInsets.only(left: 200.0,top: 50.0),
                                         //   child:
                                         // ),
                                           Padding(
                                             padding: const EdgeInsets.only(left: 10.0),
                                             child: Text("Dr. Bonebrake",style: TextStyle(
                                                 fontFamily: "Rubik",
                                                 fontWeight: FontWeight.w700,
                                                 fontSize: 18.0,
                                                 color: Color(0xff333333)
                                             ),),
                                           ),
                                         Image.asset("img/like (1).png",width: 19.0,height: 17.0,),
                                       ],
                                     ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text("Tooths Dentist",style: TextStyle(
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13.0,
                                          color: Color(0xff0EBE7F),

                                        ),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text("9 Years experience",style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          color: Color(0xff677294),
                                        ),),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0 ,),
                                          Text("74%",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),),
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0),
                                          Text("78 Patient Stories",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),)

                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Next Available",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                      color: Color(0xff0EBE7F),
                                    ),),
                                    Text("12:00 AM tomorrow",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                      color: Color(0xff677294),
                                    ),)
                                  ],
                                ),
                                SecondaryButton(
                                  onTap: (){},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 335.0,
                        height: 200.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 92.0,
                                  width: 87.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("img/finddoctor3.png"),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Container(
                                  height: 120.0,
                                  width: 220.0,
                                  decoration: BoxDecoration(
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text("Dr.Luke Whitesell",style: TextStyle(
                                                fontFamily: "Rubik",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18.0,
                                                color: Color(0xff333333)
                                            ),),
                                          ),
                                          Image.asset("img/like.png",width: 19.0,height: 17.0,),

                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text("Tooths Dentist",style: TextStyle(
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13.0,
                                          color: Color(0xff0EBE7F),

                                        ),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text("5 Years experience",style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          color: Color(0xff677294),
                                        ),),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0 ,),
                                          Text("59%",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),),
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0),
                                          Text("86 Patient Stories",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),)

                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Next Available",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                      color: Color(0xff0EBE7F),
                                    ),),
                                    Text("11:00 AM tomorrow",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                      color: Color(0xff677294),
                                    ),)
                                  ],
                                ),
                                SecondaryButton(
                                  onTap: (){},
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: 335.0,
                        height: 200.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 92.0,
                                  width: 87.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("img/finddoctor4.png"),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Container(
                                  height: 120.0,
                                  width: 220.0,
                                  decoration: BoxDecoration(
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text("Dr.Shoemaker",style: TextStyle(
                                                fontFamily: "Rubik",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18.0,
                                                color: Color(0xff333333)
                                            ),),
                                          ),
                                          Image.asset("img/like (1).png",width: 19.0,height: 17.0,),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text("Tooths Dentist",style: TextStyle(
                                          fontFamily: "PT Sans",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13.0,
                                          color: Color(0xff0EBE7F),

                                        ),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.0),
                                        child: Text("6 Years experience",style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          color: Color(0xff677294),
                                        ),),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0 ,),
                                          Text("87%",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),),
                                          Image.asset("img/Ellipse 166.png",height:13.0 ,width:34.0),
                                          Text("69 Patient Stories",style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                            color: Color(0xff677294),
                                          ),)

                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Next Available",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.0,
                                      color: Color(0xff0EBE7F),
                                    ),),
                                    Text("10:00 AM tomorrow",style: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                      color: Color(0xff677294),
                                    ),)
                                  ],
                                ),
                                SecondaryButton(
                                  onTap: (){},
                                )
                              ],
                            )
                          ],
                        ),
                      ),


                    ],
                  ),
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
