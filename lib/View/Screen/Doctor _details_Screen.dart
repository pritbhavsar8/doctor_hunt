import 'package:doctor_hunt/View/Screen/MainHomeScreen.dart';
import 'package:flutter/material.dart';

class DoctorDetail_Screen extends StatefulWidget 
{
  

  @override
  State<DoctorDetail_Screen> createState() => _DoctorDetail_Screen();
}

class _DoctorDetail_Screen extends State<DoctorDetail_Screen> {
  bool likedoctor = false;
  void Like() {
    setState(() {
      likedoctor = !likedoctor;
    });
  }
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
                  //APP BAR
                Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
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
                          Text("Doctor Details",style: TextStyle(
                              color: Color(0xff222222),
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                              fontFamily: "Rubik"
                          ),),
                          SizedBox(width: 120.0,),
                          Image.asset("img/search.png",width: 18.0,height: 18.0,color: Colors.grey,)
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Like();
                              },
                              child: Container(
                                width: 335.0,
                                height: 170.0,
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
                                          width: 92.0,
                                          height: 87.0,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage("img/dr.pedi.png"))
                                          ),
                                        ),
                                        SizedBox(width: 8.0,),
                                        Container(
                                          width: 207.0,
                                          height: 79.0,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Dr. Pediatrician",style: TextStyle(
                                                        color: Color(0xff333333),
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 18.0,
                                                        fontFamily: "Rubik"
                                                    ),),
                                                    likedoctor?Image.asset("img/like.png",width: 19.0,height: 17.0,):
                                                    Image.asset("img/like (1).png",width: 19.0,height: 17.0,)
                                                  ],
                                                ),
                                                Text("Specialist Cardiologist ",style: TextStyle(
                                                    color: Color(0xff677294),
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14.0,
                                                    fontFamily: "Rubik"
                                                ),),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Icon(Icons.star,size: 15.0,color: Colors.yellow,),
                                                    Icon(Icons.star,size: 15.0,color: Colors.yellow,),
                                                    Icon(Icons.star,size: 15.0,color: Colors.yellow,),
                                                    Icon(Icons.star,size: 15.0,color: Colors.yellow,),
                                                    Icon(Icons.star,size: 15.0,color: Colors.grey.shade200,),
                                                    RichText(
                                                      text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "\$",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 16.0,
                                                                  fontFamily: "Rubik",
                                                                  color: Color(0xff0EBE7E)
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: " 28.00/ hours",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 16.0,
                                                                  fontFamily: "Rubik",
                                                                  color: Color(0xff677294)
                                                              ),
                                                            ),
                                                          ]
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ]
                                            ),
                                          )
                                        ],
                                      ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      width: 140.0,
                                      height: 32.0,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff0EBE7F),
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4.0),
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text("Book Now",style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Container(
                              width: 315.0,
                              height: 84.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 90.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(203, 203, 203, 0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Text("100",style: TextStyle(
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Rubik"
                                        ),),
                                        Text("Runing",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    width: 90.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(203, 203, 203, 0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Text("500",style: TextStyle(
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Rubik"
                                        ),),
                                        Text("Ongoing",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    width: 90.0,
                                    height: 64.0,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(203, 203, 203, 0.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      children: [
                                        Text("700",style: TextStyle(
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18.0,
                                            fontFamily: "Rubik"
                                        ),),
                                        Text("Patient",style: TextStyle(
                                            color: Color(0xff677294),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik"
                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 338.0,
                              height: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Service",style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.0,
                                      fontFamily: "Rubik"
                                  ),),
                                  SizedBox(height: 20.0,),
                                  Container(
                                    width: 335.0,
                                    height: 30.0,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "1.  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.0,
                                                fontFamily: "Rubik",
                                                color: Color(0xff0EBE7F),
                                            ),
                                          ),
                                          TextSpan(
                                              text: "Patient care should be the number one priority.",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.0,
                                                  fontFamily: "Rubik",
                                                  color: Color(0xff677294)
                                              )
                                          )
                                        ]
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 335.0,
                                    height: 30.0,
                                    
                                    child:RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "2.  ",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.0,
                                                fontFamily: "Rubik",
                                                color: Color(0xff0EBE7F),

                                              ),
                                            ),
                                            TextSpan(
                                                text: "If you run your practiceyou know how frustrating",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13.0,
                                                    fontFamily: "Rubik",
                                                    color: Color(0xff677294)
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 335.0,
                                    height: 30.0,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "3.  ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.0,
                                              fontFamily: "Rubik",
                                              color: Color(0xff0EBE7F),

                                            ),
                                          ),
                                          TextSpan(
                                              text: " That’s why some of appointment reminder system.",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.0,
                                                  fontFamily: "Rubik",
                                                  color: Color(0xff677294)
                                              )
                                          )
                                        ]
                                      ),

                                     ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 335.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white
                              ),
                              padding: EdgeInsets.all(10.0),
                              child: Image.asset("img/map.png",fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                      ),
                    )
             ],
           ), 
         ],
      ),
    );
  }
}
