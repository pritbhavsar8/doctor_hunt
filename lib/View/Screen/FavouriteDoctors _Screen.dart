import 'package:doctor_hunt/View/Screen/MainHomeScreen.dart';
import 'package:flutter/material.dart';

class FavouriteDoctors_Screen extends StatefulWidget {
  const FavouriteDoctors_Screen({Key? key}) : super(key: key);

  @override
  State<FavouriteDoctors_Screen> createState() => _FavouriteDoctors_ScreenState();
}

class _FavouriteDoctors_ScreenState extends State<FavouriteDoctors_Screen> {
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
              SizedBox(height: 20.0,),
              // LOGO
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
                            Text("Favourite Doctors",style: TextStyle(
                                color: Color(0xff333333),
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0,
                                fontFamily: "Rubik"
                            ),),
                          ],
                        ),
                      ),
                    SizedBox(height: 40.0,),
                    SizedBox(
                          width: 335.0,
                          height: 54.0,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search,color: Color(0xff677294),),
                              hintText: "Dentist ",
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
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Row(
                          children: [
                            Container(
                              width: 155.0,
                              height: 192.0,
                             padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Image.asset("img/like (1).png",width: 17.0,height: 15.0,),
                                  ),
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("img/f1.png"),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Dr.Shouey",style: TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      fontFamily: "Rubik"
                                  ),),
                                  Text("Specalist Cardiology",style: TextStyle(
                                      color: Color(0xff0EBE7E),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.0,
                                      fontFamily: "Rubik"
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0,),
                            Container(
                              width: 155.0,
                              height: 192.0,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Image.asset("img/like.png",width: 17.0,height: 15.0,),
                                  ),
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("img/f2.png"),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Dr.Christenfeld N",style: TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      fontFamily: "Rubik"
                                  ),),
                                  Text("Specalist Cancer",style: TextStyle(
                                      color: Color(0xff0EBE7E),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0,
                                      fontFamily: "Rubik"
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15.0),
                        child: Row(
                          children: [
                            Container(
                              width: 155.0,
                              height: 192.0,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Image.asset("img/like.png",width: 17.0,height: 15.0,),
                                  ),
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("img/f3.png"),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Dr.Shouey",style: TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      fontFamily: "Rubik"
                                  ),),
                                  Text("Specalist Medicine ",style: TextStyle(
                                      color: Color(0xff0EBE7E),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.0,
                                      fontFamily: "Rubik"
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(width: 20.0,),
                            Container(
                              width: 155.0,
                              height: 192.0,
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100.0),
                                    child: Image.asset("img/like (1).png",width: 17.0,height: 15.0,),
                                  ),
                                  Container(
                                    height: 80.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("img/f4.png"),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Dr.Shouey",style: TextStyle(
                                      color: Color(0xff333333),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0,
                                      fontFamily: "Rubik"
                                  ),),
                                  Text("Specalist Dentist",style: TextStyle(
                                      color: Color(0xff0EBE7E),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.0,
                                      fontFamily: "Rubik"
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
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
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text("See all >",style: TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.0,
                                  fontFamily: "Rubik"
                              ),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
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
                                        Image.asset("img/like (1).png",height: 9.0,width: 10.0,),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.yellow,size: 15.0),
                                            SizedBox(width: 5.0,),
                                            Text("3.7",style: TextStyle(
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.w700,
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
                                      child: Image.asset("img/ff1.png"),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text("Dr. Crick",style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
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
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.w700,
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
                                      child: Image.asset("img/ff2.png"),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text("Dr.Strain",style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
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
                                width: 100.0,
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
                                            Text("2.9",style: TextStyle(
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.w700,
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
                                      child: Image.asset("img/ff3.png"),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text("Dr.Lachinet",style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
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
                                                color: Color(0xff333333),
                                                fontWeight: FontWeight.w700,
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
                                      child: Image.asset("img/ff1.png"),
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text("Dr. Crick",style: TextStyle(
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.w700,
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
          )
        ],
      ),
    );
  }
}
