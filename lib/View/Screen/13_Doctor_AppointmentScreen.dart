import 'package:flutter/material.dart';

class DoctorAppointment_screen extends StatefulWidget {
 

  @override
  State<DoctorAppointment_screen> createState() => _DoctorAppointment_screen();
}

class _DoctorAppointment_screen extends State<DoctorAppointment_screen> {
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
                          Container(
                            height: 30.0,
                            width: 30.0,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Image.asset("img/Chevron Right.png"),
                          ),
                          SizedBox(width: 20.0,),
                          Text("Appointment",style: TextStyle(
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
                              padding: const EdgeInsets.only(left:20.0),
                              child: Container(
                                width: 335.0,
                                height: 125.0,
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
                                                    Image.asset("img/like.png",width: 19.0,height: 17.0,)
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
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            Padding(
                              padding: const EdgeInsets.only(left:20.0),
                              child: Text("Appointment For",style: TextStyle(
                                       fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xff333333)
                              ),),
                            ),
                           SizedBox(height: 20.0,),
                            Padding(
                             padding: const EdgeInsets.only(left:20.0),
                             child: Container(
                              width: 335.0,
                              height: 54.0,
                               child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Patient Name",
                                  hintStyle: TextStyle(
                                       fontWeight: FontWeight.w300,
                                        fontSize: 14.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xff677294)
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color: Color(0xff76809F)
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color:Color(0xff76809F)
                                    )
                                  )
                                ),
                               ),
                             ),
                           ),
                           SizedBox(height: 20.0,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 335.0,
                              height: 54.0,
                               child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Contact Number",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w300,
                                        fontSize: 14.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xff677294)
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color:Color(0xff76809F)
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    borderSide: BorderSide(
                                      color:Color(0xff76809F)
                                    )
                                  )
                                ),
                               ),
                             ),
                          ),
                           SizedBox(height: 20.0,),
                           Padding(
                             padding: const EdgeInsets.only(left:20.0),
                             child: Text("Who is this patient?",style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                        fontSize: 16.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xff3333333)
                             ),),
                           ),
                           SizedBox(height: 20.0,),
                           Padding(
                             padding: const EdgeInsets.only(left:20.0),
                             child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 152.0,
                             
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [                             
                                  Container(
                                    width: 100.0,
                                    height: 125.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6.0),
                                      color: Color(0xff0EBE7F)
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(Icons.add,size: 25,color: Color.fromRGBO(14, 190, 127, 0.2),),
                                        Text("Add",style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xff0EBE7F)
                                        ),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                   Column(
                                     children: [
                                       Container(
                                        width: 100.0,
                                        height: 125.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          image: DecorationImage(image: AssetImage("img/myself.png"),fit: BoxFit.cover),

                                        ),                                                                            
                                      ),
                                       Text("My Self",style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik",
                                            color: Color(0xff677294)
                                            ),)
                                     ],
                                    ),
                                   SizedBox(width: 10.0,),
                                     Column(
                                     children: [
                                       Container(
                                        width: 100.0,
                                        height: 125.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          image: DecorationImage(image: AssetImage("img/mychild.png"))
                                        ),                                                                            
                                      ),
                                       Text("My Child",style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.0,
                                            fontFamily: "Rubik",
                                            color: Color(0xff677294)
                                            ),)
                                     ],
                                    ),
                                ],
                              ),
                             ),
                           ),
                           SizedBox(height: 30.0,),
                           Center(
                             child: Container(
                              width: 295.0,
                              height: 54.0,                          
                              child: ElevatedButton(
                                onPressed: () {
                                  
                                },
                                child: Text("Next",style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                        fontFamily: "Rubik",
                                        color: Color(0xffFFFFFF)
                                ),),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xff0EBE7F)
                                ),
                              ),
                             ),
                           )
                          ],
                        ),
                      ),
                    )

            ],
          )
        ],
      ),
    );
  }
}