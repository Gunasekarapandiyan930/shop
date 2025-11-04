import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
    Profile({super.key});

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  bool box = false;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration:   BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6xI4Hw3Kv4Dd0P06gdT058DplHcKFMdOxQ&s"))),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(),
                    SizedBox(
                        height: 80.h,
                        width: 80.w,
                        child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/3081/3081559.png")),
                    Container(
                      margin:   EdgeInsets.only(
                        top: 50.h,
                        left: 20.w,
                        right: 20.w,
                      ),
                      width: 300.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                            SizedBox(
                            height: 40.h,
                          ),
                            Text(
                            "SIGN IN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                            SizedBox(
                            height: 40.h,
                          ),
                          Container(
                            height: 50.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:   Color.fromARGB(255, 4, 114, 204),
                            ),
                            child: Center(
                              child: TextFormField(
                                style:   TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                controller: email,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please enter your email";
                                  } else if (!RegExp(
                                          r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                                      .hasMatch(value)) {
                                    return 'please enter ur crct email';
                                  }
                                  return null;
                                },
                                decoration:   InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.contact_emergency,
                                      color: Colors.white,
                                    ),
                                    hintText: "Name/Email or Mobile",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                            SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 50.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:   Color.fromARGB(255, 4, 114, 204),
                            ),
                            child: Center(
                              child: TextFormField(
                                style:   TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                                controller: password,
                                decoration:   InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                    ),
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                            SizedBox(
                            height: 10.h,
                          ),
                            Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                //fontSize: 20
                              ),
                            ),
                          ),
                            SizedBox(
                            height: 20.h,
                          ),
                            SizedBox(
                            height: 20.h,
                          ),
                          InkWell(
                            child: Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                color:   Color.fromARGB(255, 4, 114, 204),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:   Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () async {
                              if (formkey.currentState!.validate()) {
                                var res = await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: email.text,
                                        password: password.text);
                                     context.pushNamed('main');

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(  SnackBar(
                                  content: Text(
                                    "Login successfully",
                                  ),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.green,
                                ));
                              }
                            },
                          ),
                            SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                                SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                onTap: () {
                                context.pushNamed('signup');
                                },
                                child:   Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                      SizedBox(
                      height: 20.h,
                    ),
                      Text(
                      "Sign In With",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                      SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25.r,
                            child: Container(
                              height: 20.h,
                              width: 20.w,
                              decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                              child: InkWell(
                                onTap: () {},
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdKMbkSnZrrX1GK4BdQ3NiDDsV7QROaFEpmQ&s",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                          SizedBox(
                          width: 20.w,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25.r,
                            child: Container(
                              height: 30.h,
                              width: 30.w,
                              decoration:
                                    BoxDecoration(shape: BoxShape.circle),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3bs7ImPUjJBAVwguTmI9u9g10SJnDYKiYaQ&s",
                                fit: BoxFit.cover,
                              ),
                            )),
                          SizedBox(
                          width: 20.w,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed('mobile');
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25.r,
                              child: Container(
                                height: 30.h,
                                width: 30.w,
                                decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3vgrH3yTeMWzEKUVsgZvfm7Zenya2VNv7XbgvfchdvQ3uhpB1JJTcfSSl8GUYq7pMNK4&usqp=CAU",
                                  fit: BoxFit.cover,
                                ),
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
