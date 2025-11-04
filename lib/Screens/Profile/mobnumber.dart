
import 'package:apkrestart/Screens/Profile/otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  TextEditingController mobnumber = TextEditingController();
  String countrycode = "91";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          SizedBox(
            height: 450.h,
          // color: Colors.lightBlue,
            child: Center(
              child: Image.network(fit: BoxFit.fill,height: 300.h,
                "https://static.vecteezy.com/system/resources/thumbnails/048/363/604/small/smartphone-application-hand-click-button-empty-screen-copy-space-menu-3d-icon-realistic-png.png"
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
            
              children: [
                Text(
                
                  "Enter Your Mobile Number :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                ),
               
              ],
            ),
          ),
            SizedBox(height: 20.h,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                 
                  children: [
                    Container(
                      height: 50.h,width: 70.w,decoration: BoxDecoration(
                        border: Border.all(width: 2.w)
                      ),
                      child: const Center(
                        child: Text("+91",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                      ),
                    ),
                     SizedBox(
                      width: 30.w
                    ),
                      Container(
                      height: 50.h,width: 270.w,decoration: const BoxDecoration(
                       // border: Border.all(width: 2)
                      ),
                      child: TextFormField(keyboardType: TextInputType.number,
                        controller: mobnumber,
                        decoration: const InputDecoration(
                          hintText: "Mobile Number",hintStyle: TextStyle(
                             fontWeight: FontWeight.bold,
                          fontSize: 20
                
                          ),
                         
                        border: OutlineInputBorder()
                        ),
                      )
                 
                    ),
                  ],
                ),
              ),
               SizedBox(height: 30.h,),
             InkWell(onTap:() async {
              await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: (countrycode + mobnumber.text),
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {},
             codeSent: (String verificationId, int? resendToken) {},
             codeAutoRetrievalTimeout: (String verid) {
               Navigator.push(context, MaterialPageRoute(builder: (context) => const EnterOTP(verificationId:"verid" ,),));
             },
);
             
             },
               child: Container(
                height: 50.h,
                width: 350.w,
                color: Colors.red[400],
                child: const Center(
                  child: Text(
                    "Submit",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
               ),
             )
        ],
      ),
    );
  }
}