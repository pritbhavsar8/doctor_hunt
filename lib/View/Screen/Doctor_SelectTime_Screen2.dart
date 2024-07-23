import 'package:doctor_hunt/View/Screen/Doctor%20_SelectTime_Screen.dart';
import 'package:flutter/material.dart';

class Doctor_SelectTime_Screen2 extends StatefulWidget {
  const Doctor_SelectTime_Screen2({Key? key}) : super(key: key);

  @override
  State<Doctor_SelectTime_Screen2> createState() => _Doctor_SelectTime_Screen2State();
}

class _Doctor_SelectTime_Screen2State extends State<Doctor_SelectTime_Screen2> {
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
               Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Doctor_SelectTime(),)
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
                        Text("Select Time",style: TextStyle(
                            color: Color(0xff222222),
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                            fontFamily: "Rubik"
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
           Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      height: 100.0,
                      width: 360.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 71.0,
                                height: 68.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("img/dr.shruti.png"),fit: BoxFit.cover)
                                ),
                              ),
                              SizedBox(width: 8.0,),
                              InkWell(
                                onTap: () {
                                  Like();
                                },
                                child: Container(
                                  height: 75.0,
                                  width: 260.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Dr.Shruti Kedia",style: TextStyle(
                                              color: Color(0xff222222),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16.0,
                                              fontFamily: "Rubik"
                                          ),),
                                         likedoctor?Image.asset("img/like.png",width: 15.0,height: 12.0,):
                                         Image.asset("img/like (1).png",width: 15.0,height: 12.0,)
                                        ],
                                      ),
                                      Text("Upasana Dental Clinic, salt lake",style: TextStyle(
                                          color: Color(0xff677294),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                          fontFamily: "Rubik"
                                      ),),
                                      Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                                          Icon(Icons.star,color: Colors.yellow,size: 15),
                                          Icon(Icons.star,color: Colors.yellow,size: 15),
                                          Icon(Icons.star,color: Colors.yellow,size: 15),
                                          Icon(Icons.star,color: Colors.grey.shade200,size: 15),
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
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 150.0,
                            height: 54.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                border: Border.all(
                                    color: Color.fromRGBO(103, 114, 148, 0.16),
                                )
                            ),
                            child: Column(
                              children: [
                                Text("Today, 23 Feb",style: TextStyle(
                                    color: Color(0xff333333),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0,
                                    fontFamily: "Rubik"
                                ),),
                                Text("No slots available",style: TextStyle(
                                    color: Color(0xff677294),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                    fontFamily: "Rubik"
                                ),)
                              ],
                            ),

                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            width: 170.0,
                            height: 54.0,
                            decoration: BoxDecoration(
                              color: Color(0xff0EBE7F),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Column(
                              children: [
                                Text("Tomorrow, 24 Feb",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    fontFamily: "Rubik"
                                ),),
                                Text("9 slots available",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                    fontFamily: "Rubik"
                                ),)
                              ],
                            ),

                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            width: 170.0,
                            height: 54.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(103, 114, 148, 0.16)
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Column(
                              children: [
                                Text("Thursday, 25 Feb",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0,
                                    fontFamily: "Rubik"
                                ),),
                                Text("10 slots available",style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.0,
                                    fontFamily: "Rubik"
                                ),)
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Center(
                    child: Text("Today, 23 Feb",style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        fontFamily: "Rubik"
                    ),),
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text("Afternoon 7 slots",style: TextStyle(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        fontFamily: "Rubik"
                    ),),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(                
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("1:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),  
                        ),
                         SizedBox(width: 10.0,),
                          Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("1:30 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                  
                        ),
                         SizedBox(width: 10.0,),
                          Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 1),
                          ),
                          child: Center(
                            child: Text("2:00 PM",style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                  
                        ),
                         SizedBox(width: 10.0,),
                          Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("2:30 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                  
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Row(
                      children: [
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("3:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                  
                        ),
                         SizedBox(width: 10.0,),
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("3:30 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                  
                        ),
                         SizedBox(width: 10.0,),
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("4:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),                 
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0,),
                   Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: Row(
                      children: [
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("5:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                   
                        ),
                         SizedBox(width: 10.0,),
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 1)
                          ),
                          child: Center(
                            child: Text("5:30 PM",style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                   
                        ),
                         SizedBox(width: 10.0,),
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("6:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                   
                        ),
                         SizedBox(width: 10.0,),
                         Container(                
                          width: 76.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("6:30 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                   
                        ),
                      ],
                                     ),
                   ),
                  SizedBox(height: 10.0,),
                   Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: Container(                                   
                          width: 76.0,
                          height: 40.0,                       
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color.fromRGBO(14, 190, 127, 0.08)
                          ),
                          child: Center(
                            child: Text("7:00 PM",style: TextStyle(
                                color: Color(0xff0EBE7F),
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0,
                                fontFamily: "Rubik"
                            ),),
                          ),
                        ),
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
