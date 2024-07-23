import 'package:doctor_hunt/View/Screen/onboarding_Screen1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => onboarding_screen1(),)
      );
    },);
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70.0,
                  height: 70.0,
                  child: Image.asset("img/Frame.png"),
                ),
                SizedBox(height: 20.0,),
                Text("Doctor Hunt",style: TextStyle(
                    color: Color(0xff222222),
                    fontWeight: FontWeight.w700,
                    fontSize: 23.0,
                    fontFamily: "Rubik"
                ),)
              ],
            ),
          ),
        ],
      ),

    );
  }
}
