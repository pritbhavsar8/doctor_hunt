import 'package:doctor_hunt/View/Screen/MainHomeScreen.dart';
import 'package:doctor_hunt/View/Screen/SignUp_Screen.dart';
import 'package:doctor_hunt/Widgets/RoundedButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecure = true;
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
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 127.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Welcome back",style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 24.0,
                            fontFamily: "Rubik"
                        ),),
                        SizedBox(height: 15.0,),
                        Text("You can search course,apply course and find "
                            "scholarship for abroad studies",textAlign: TextAlign.center,style: TextStyle(
                            color: Color(0xff677294),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            fontFamily: "Rubik"
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Container(
                        width: 154.0,
                        height: 60.0,
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xffFFFFFF)
                        ),
                        child: Row(
                          children: [
                            Image.asset("img/google.png",height: 18.0,width: 18.0,),
                            SizedBox(width: 20.0,),
                            Text("Google",style: TextStyle(
                                color: Color(0xff677294),
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                                fontFamily: "Rubik"
                            ),)

                          ],
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        width: 154.0,
                        height: 60.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xffFFFFFF)
                        ),
                        child: Row(
                          children: [
                            Image.asset("img/fb.png",height: 19.0,width: 19.0,),
                            SizedBox(width: 20.0,),
                            Text("Facebook",style: TextStyle(
                                color: Color(0xff677294),
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                                fontFamily: "Rubik"
                            ),)

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30.0,),
                Container(
                  width: 334.0,
                  height: 54.0,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "itsmemamun1@gmail.com",
                        hintStyle: TextStyle(
                            color: Color(0xff677294),
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                            fontFamily: "Rubik"
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color:  Color.fromRGBO(103, 114, 148, 0.16),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color:  Color.fromRGBO(103, 114, 148, 0.16),
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: 334.0,
                  height: 54.0,
                  child: TextField(
                    obscureText: obsecure,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(obsecure?Icons.visibility_off:Icons.visibility),
                          onPressed: () {
                            setState(() {
                              obsecure = !obsecure;
                            });
                          },
                        ),
                        hintStyle: TextStyle(
                            color: Color(0xff677294),
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                            fontFamily: "Rubik"
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(103, 114, 148, 0.16),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color:  Color.fromRGBO(103, 114, 148, 0.16),
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),

                RoundedButton(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: "Rubik"
                  ),
                  btntext: "Login",
                  ontap: (){
                     Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => MainHomeScreen(),)
                   );
                  },
                ),
                SizedBox(height: 10.0,),
                Text("Forgot password",style: TextStyle(
                    color: Color(0xff0EBE7F),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    fontFamily: "Rubik"
                ),),
                SizedBox(height: 50.0,),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Don’t Have an account?",
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              fontFamily: "Rubik"
                          )
                      ),
                      TextSpan(
                          text: "Join us",
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              fontFamily: "Rubik"
                          ),
                          recognizer: TapGestureRecognizer()..onTap = ()
                          {
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) =>SignUp_Screen() ,)
                           );
                          }
                      )
                    ]
                ))

              ],
            ),
          )
        ],
      ),
    );
  }
}
