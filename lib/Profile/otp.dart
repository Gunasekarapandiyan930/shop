import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EnterOTP extends StatefulWidget {
  final String verificationId;
  const EnterOTP({super.key, required this.verificationId});

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  TextEditingController otp = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 300,
             child: Center(
              child: Image.network(fit: BoxFit.fill,height: 300,
                "https://png.pngtree.com/png-vector/20240607/ourmid/pngtree-otp-authentication-and-secure-verification-never-share-otp-and-bank-details-png-image_12636622.png"
              ),
            ),
          ),const 
          //SizedBox(height: 20,),
          Text("OTP Verifivation",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
                ),
               // SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Text("Please register your OTP :",
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                      ),
                    ],
                  ),
                ),
               ///  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 50,width: 50,color: Colors.grey[400],
                      child: TextFormField(
                        controller: otp,
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                        keyboardType: TextInputType.number,
                      maxLength: 1,
                    
                        decoration: const InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                     Container(height: 50,width: 50,color: Colors.grey[400],
                      child: TextFormField(
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                        keyboardType: TextInputType.number,
                      maxLength: 1,
                    
                        decoration: const InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                     Container(height: 50,width: 50,color: Colors.grey[400],
                      child: TextFormField(
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                        keyboardType: TextInputType.number,
                      maxLength: 1,
                    
                        decoration: const InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                     Container(height: 50,width: 50,color: Colors.grey[400],
                      child: TextFormField(
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                        keyboardType: TextInputType.number,
                      maxLength: 1,
                    
                        decoration: const InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Text("Don't receive OTP?",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),),
                        SizedBox(width: 10,),
                         Text("Resend OTP",
                       style: TextStyle(
                        color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),),
                  
                    ],
                  ),
                ),
                InkWell(onTap: () async {
                   PhoneAuthCredential credential = PhoneAuthProvider.credential(
                   verificationId: widget.verificationId, 
                    smsCode: otp.text);

    // Sign the user in (or link) with the credential
    await auth.signInWithCredential(credential);
  
                },
                  child: Container(
                  height: 50,
                  width: 350,
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
                ),
        ],
        
      ),
    );
  }
}