import 'package:doctor_hunt/View/Screen/HomeScreen.dart';
import 'package:doctor_hunt/View/Screen/MainHomeScreen.dart';
import 'package:flutter/material.dart';

class Poplular_DoctorScreen extends StatefulWidget {
  const Poplular_DoctorScreen({Key? key}) : super(key: key);

  @override
  State<Poplular_DoctorScreen> createState() => _Poplular_DoctorScreenState();
}

class _Poplular_DoctorScreenState extends State<Poplular_DoctorScreen> {
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
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: InkWell(
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0,),
                        child: Container(
                          height: 18.0,
                          width: 18.0,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("img/search.png"),fit: BoxFit.cover)
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30.0,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                             
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text("Popular Doctor",style: TextStyle(
                              color: Color(0xff333333),
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0,
                              fontFamily: "Rubik"
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Text("See all >",style: TextStyle(
                              color: Color(0xff677294),
                              fontWeight: FontWeight.w300,
                              fontSize: 10.0,
                              fontFamily: "Rubik"
                          ),),
                        )
                      ],
                    ),
                  SizedBox(height: 30.0,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 15.0,),
                        Container(
                          width: 136.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("img/dr.tru.png",fit: BoxFit.cover,),
                              Text("Dr.Truluck Nik",style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  fontFamily: "Rubik"
                              ),),
                              Text("Medicine Specialist",style: TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10.0,
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
                        SizedBox(width: 20,),
                        Container(
                          width: 136.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("img/dr.tra.png",fit: BoxFit.cover,),
                              Text("Dr.Tranquilli",style: TextStyle(
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  fontFamily: "Rubik"
                              ),),
                              Text("Patheology Specialist",style: TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10.0,
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
                        SizedBox(width: 20,),
                        Container(
                          width: 136.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset("img/dr.tru.png",fit: BoxFit.cover,),
                              Text("Dr.Truluck Nik",style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  fontFamily: "Rubik"
                              ),),
                              Text("Medicine Specialist",style: TextStyle(
                                  color: Color(0xff677294),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10.0,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Category",style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        fontFamily: "Rubik"
                    ),),
                  ),
                  SizedBox(height: 20.0,),
                     Padding(
                       padding: EdgeInsets.all(10.0),
                       child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Like();
                            },
                            child: Container(
                                padding: EdgeInsets.all(10.0),
                                width: 355.0,
                                height: 115.0,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("img/dr.pedi.png",fit: BoxFit.cover,width: 82.0,height: 82.0),
                                        SizedBox(width: 15.0,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("Dr.Pediatrician",style: TextStyle(
                                                    color: Color(0xff333333),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18.0,
                                                    fontFamily: "Rubik"
                                                ),),
                                                SizedBox(width: 50.0),
                                                likedoctor?Image.asset("img/like.png",width: 19.0,height: 17.0,):
                                                Image.asset("img/like (1).png",width: 19.0,height: 17.0,)
                                              ],
                                            ),
                                            Text("Specialist Cardiologist",style: TextStyle(
                                                color: Color(0xff677294),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.0,
                                                fontFamily: "Rubik"
                                            ),),
                                            SizedBox(height: 7.0,),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 80.0,
                                                  height: 12.0,
                                                  child: Image.asset("img/star.png"),
                                                ),
                                                SizedBox(width: 50.0,),
                                                RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "2.4 ",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16.0,
                                                          fontFamily: "Rubik"
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "(2475 views)",
                                                      style: TextStyle(
                                                          color: Color(0xff677294),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12.0,
                                                          fontFamily: "Rubik"
                                                      ),
                          
                          
                                                    )
                                                  ]
                                                ))
                                              ],
                                            )
                          
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                          ),
                          SizedBox(height: 20.0,),
                          InkWell(
                             onTap: () {
                              Like();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              width: 355.0,
                              height: 115.0,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("img/dr.mistry.png",fit: BoxFit.cover,width: 82.0,height: 82.0),
                                      SizedBox(width: 15.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Dr.Mistry Brick",style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18.0,
                                                  fontFamily: "Rubik"
                                              ),),
                                              SizedBox(width: 50.0),
                                              likedoctor?Image.asset("img/like.png",width: 19.0,height: 17.0,):
                                              Image.asset("img/like (1).png",width: 19.0,height: 17.0,)
                                            ],
                                          ),
                                          Text("Specialist Dentist ",style: TextStyle(
                                              color: Color(0xff677294),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14.0,
                                              fontFamily: "Rubik"
                                          ),),
                                          SizedBox(height: 7.0,),
                                          Row(
                                            children: [
                                              Container(
                                                width: 80.0,
                                                height: 12.0,
                                                child: Image.asset("img/star.png"),
                                              ),
                                              SizedBox(width: 50.0,),
                                              RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "2.8",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16.0,
                                                          fontFamily: "Rubik"
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "(2893 views)",
                                                      style: TextStyle(
                                                          color: Color(0xff677294),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12.0,
                                                          fontFamily: "Rubik"
                                                      ),
                          
                          
                                                    )
                                                  ]
                                              ))
                                            ],
                                          )
                          
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          InkWell(
                            onTap: (){
                              Like();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              width: 355.0,
                              height: 115.0,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("img/dr.ether.png",fit: BoxFit.cover,width: 82.0,height: 82.0),
                                      SizedBox(width: 15.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Dr.Ether Wall",style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18.0,
                                                  fontFamily: "Rubik"
                                              ),),
                                              SizedBox(width: 70.0),
                                              likedoctor?Image.asset("img/like.png",width: 19.0,height: 17.0,):
                                              Image.asset("img/like (1).png",width: 19.0,height: 17.0,)
                                            ],
                                          ),
                                          Text("Specialist Cancer",style: TextStyle(
                                              color: Color(0xff677294),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14.0,
                                              fontFamily: "Rubik"
                                          ),),
                                          SizedBox(height: 7.0,),
                                          Row(
                                            children: [
                                              Container(
                                                width: 80.0,
                                                height: 12.0,
                                                child: Image.asset("img/star.png"),
                                              ),
                                              SizedBox(width: 50.0,),
                                              RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "2.7 ",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16.0,
                                                          fontFamily: "Rubik"
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "(2754 views)",
                                                      style: TextStyle(
                                                          color: Color(0xff677294),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12.0,
                                                          fontFamily: "Rubik"
                                                      ),
                          
                          
                                                    )
                                                  ]
                                              ))
                                            ],
                                          )
                          
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          InkWell(
                            onTap: () {
                              Like();
                            },
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              width: 355.0,
                              height: 115.0,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("img/dr.john.png",fit: BoxFit.cover,width: 82.0,height: 82.0),
                                      SizedBox(width: 15.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Dr.Johan smith",style: TextStyle(
                                                  color: Color(0xff333333),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18.0,
                                                  fontFamily: "Rubik"
                                              ),),
                                              SizedBox(width: 42.0),
                                              likedoctor?Image.asset("img/like.png",width: 19.0,height: 17.0,):
                                              Image.asset("img/like (1).png",width: 19.0,height: 17.0,)
                                            ],
                                          ),
                                          Text("Specialist Cardiologist",style: TextStyle(
                                              color: Color(0xff677294),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14.0,
                                              fontFamily: "Rubik"
                                          ),),
                                          SizedBox(height: 7.0,),
                                          Row(
                                            children: [
                                              Container(
                                                width: 80.0,
                                                height: 12.0,
                                                child: Image.asset("img/star.png"),
                                              ),
                                              SizedBox(width: 50.0,),
                                              RichText(text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "2.4 ",
                                                      style: TextStyle(
                                                          color: Color(0xff000000),
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16.0,
                                                          fontFamily: "Rubik"
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: "(2475 views)",
                                                      style: TextStyle(
                                                          color: Color(0xff677294),
                                                          fontWeight: FontWeight.w400,
                                                          fontSize: 12.0,
                                                          fontFamily: "Rubik"
                                                      ),
                          
                          
                                                    )
                                                  ]
                                              ))
                                            ],
                                          )
                          
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
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
         
         
        ],
      ),
    );
  }
}
