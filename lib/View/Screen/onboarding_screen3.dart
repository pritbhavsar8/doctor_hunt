import 'package:doctor_hunt/View/Screen/HomeScreen.dart';
import 'package:doctor_hunt/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';

class onboarding_screen3 extends StatefulWidget {
  const onboarding_screen3({Key? key}) : super(key: key);

  @override
  State<onboarding_screen3> createState() => _onboarding_screen3State();
}

class _onboarding_screen3State extends State<onboarding_screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    height: 460.0,
                    width: 447.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: AssetImage("img/image3.png")
                        )
                    ),
                  ),
                  Text("Easy Appointments",style: TextStyle(
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 28.0,
                      fontFamily: "Rubik"
                  ),),
                  Text("Contrary to popular belief, Lorem Ipsum is not"
                      " simply random text. It has roots in a piece of it"
                      " over 2000 years old.",textAlign: TextAlign.center,style: TextStyle(
                      color: Color(0xff677294),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      fontFamily: "Rubik"
                  ),),
                  SizedBox(height: 30),
                  PrimaryButton(
                    btntext: "Get Started",
                    onTap: (){},
                  ),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen(),)
                      );
                    },
                    child: Text("skip",style: TextStyle(
                        color: Color(0xff677294),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        fontFamily: "Rubik"
                    ),),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
