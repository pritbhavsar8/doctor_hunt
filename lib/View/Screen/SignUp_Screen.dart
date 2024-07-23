import 'package:doctor_hunt/View/Screen/LoginScreen.dart';
import 'package:doctor_hunt/Widgets/RoundedButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatefulWidget
{
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen>
{
  bool obsecure = true;
  bool cb = true;
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
                  padding: const EdgeInsets.only(top: 130.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Join us to start searching",style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                            fontSize: 22.0,
                            fontFamily: "Rubik"
                        ),),
                        SizedBox(height: 15.0,),
                        Text("You can search course,apply course and find "
                            "scholarship for abroad studies",textAlign: TextAlign.center,style: TextStyle(
                            color: Color(0xff677294),
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            fontFamily: "Rubik"
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
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
                SizedBox(height: 20.0,),
                Container(
                  width: 334.0,
                  height: 54.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
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
                          color: Color.fromRGBO(103, 114, 148, 0.16)
                        )
                      ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(103, 114, 148, 0.16)
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: 334.0,
                  height: 54.0,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
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
                              color: Color.fromRGBO(103, 114, 148, 0.16)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(103, 114, 148, 0.16)
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: 334.0,
                  height: 54.0,
                  child: TextField(
                    obscureText: obsecure,
                    decoration: InputDecoration(                   
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(obsecure?Icons.visibility_off:Icons.visibility,color: Color(0xff677294),),
                          onPressed: () {
                            setState(() {
                              obsecure= !obsecure;
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
                             color: Color.fromRGBO(103, 114, 148, 0.16)
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(103, 114, 148, 0.16)
                            )
                        )
                    ),
                  ),
                ),
                    Row(
                    children: [
                        Checkbox(
                          shape: CircleBorder(
                            side: BorderSide(
                              color: Color.fromRGBO(103, 114, 148, 0.5)
                            )
                          ),
                          fillColor: MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Color.fromRGBO(103, 114, 148, 0.5);
                            }
                          }),
                          value: cb,
                          onChanged: (val){
                            setState(() {
                              cb = val!;
                            });
                          },
                        ),
                      Text("I agree with the Terms of Service & Privacy Policy",style: TextStyle(
                          color: Color.fromRGBO(103, 114, 148, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 10.0,
                          fontFamily: "Rubik"
                      ),)
                    ],
                  ),
                
                SizedBox(height: 20.0,),
                RoundedButton(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      fontFamily: "Rubik"
                  ),
                  btntext: "Sign up",
                  ontap: (){},
                ),
                SizedBox(height: 10.0,),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Have an account?",
                      style: TextStyle(
                          color: Color(0xff0EBE7F),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: "Rubik"
                      )
                    ),
                    TextSpan(
                        text: " Log in",
                        style: TextStyle(
                            color: Color(0xff0EBE7F),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            fontFamily: "Rubik"
                        ),
                        recognizer:  TapGestureRecognizer()..onTap = (){
                            Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) =>LoginScreen() ,)
                          );
                        },
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
