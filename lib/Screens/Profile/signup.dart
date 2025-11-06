import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signin extends StatelessWidget {
    const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
    const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GoogleSignIn signIn = GoogleSignIn();
  Future<UserCredential?> signInwithgoogle() async {
    return null;
  }

  final name = TextEditingController();
  final password = TextEditingController();
  bool eye = true;

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      body: Form(
        key: formkey,
        child: Container(
          decoration:   const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://media.istockphoto.com/id/2163983591/vector/abstract-multicolored-gradient-vector-background-design-wallpaper-template-with-geometric.jpg?s=612x612&w=0&k=20&c=wb1CT6XfnlzyhA63kMaN6LW0EM-ltGJSPSPlSW9qHos="))),
          child: Padding(
            padding:   const EdgeInsets.only(
              top: 280,
              left: 10,
            ),
            child: Column(
              children: [
               SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                      context.pop();
                        },
                        icon:   const Icon(
                          Icons.arrow_back,
                          size: 25,
                        )),
                  SizedBox(width: 20.w),
                      Text(
                      "Signup",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
               SizedBox(
                  height: 30.h,
                ),
                Container(margin:   const EdgeInsets.all(20),  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur name or email";
                      }
                      return null;
                    },
                    decoration:   InputDecoration(border: const OutlineInputBorder(),
                      labelText: 'Name or Email :',
                      labelStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                    ),
                  ),
                ),
               
                Container(  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  
margin: EdgeInsets.all(20.r),
                  child: TextFormField(
                    controller: password,
                    //obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border:   const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              eye = !eye;
                            });
                          },
                          icon: Icon(
                              eye ? Icons.visibility_off : Icons.visibility)),
                      labelText: 'Password :',
                      labelStyle:   TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder:   const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                  
                      // hintText: "password",border:   OutlineInputBorder()
                    ),
                  ),
                ),
              
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  
margin: EdgeInsets.all(20.r),
                  child: TextFormField(
                    controller: password,
                    //obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(border:   const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              eye = !eye;
                            });
                          },
                          icon: Icon(
                              eye ? Icons.visibility_off : Icons.visibility)),
                      labelText: 'Confirm password:',
                      labelStyle:   TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder:   const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                  
                      //  hintText: "Confirm Password",border:   OutlineInputBorder()
                    ),
                  ),
                ),
              SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple,
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () async {
                        if (formkey.currentState!.validate()) {
                          var res = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: name.text, password: password.text);
                          print("Password:${password.text}");
                        context.pushNamed('register');
                        }
                      },
                      child:   const Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
