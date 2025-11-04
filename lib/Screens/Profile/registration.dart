import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
    Register({super.key});

  @override
  State<Register> createState() => _SignupState();
}

class _SignupState extends State<Register> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final dob = TextEditingController();
  final phonenumber = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  bool open = true;
  bool eye = true;
  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    dob.dispose();
    password.dispose();
    confirmpassword.dispose();
    phonenumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,decoration:   BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage('https://i.pinimg.com/236x/b9/70/40/b970409ee8382fb687bb9c2a5a97f9e9.jpg'))
        ),
          child: SingleChildScrollView(
            padding:   EdgeInsets.all(20),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                         context.pop();
                            },
                            icon:   Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                         SizedBox(width: 20.w),
                          Text(
                          "Registration",
                          style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 30.h,
                  ),
                  TextFormField(
                    controller: firstname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur name";
                      }
                      return null;
                    },
                    decoration:   InputDecoration(
                        labelText: 'First name',
                        labelStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        border: OutlineInputBorder()),
                  ),
                 SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: lastname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur lastname";
                      }
                      return null;
                    },
                    decoration:   InputDecoration(
                        labelText: 'Last name',
                        labelStyle: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration:   InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                               fontSize: 18.sp,           
          fontWeight: FontWeight.bold, 
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ), border: OutlineInputBorder()),
                  ),
                 SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: dob,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur DOB";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.datetime,
                    decoration:   InputDecoration(
                        labelText: 'Date of Birth',
                        labelStyle: TextStyle(
                               fontSize: 18.sp,           
          fontWeight: FontWeight.bold, 
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ),
                         border: OutlineInputBorder()),
                  ),
                 SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: phonenumber,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur Mobile Number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration:   InputDecoration(
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(
                               fontSize: 18.sp,           
          fontWeight: FontWeight.bold, 
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ),
                        
                         border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(eye ? Icons.visibility_off : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              eye = !eye;
                            });
                          },
                        ),
                        labelText: 'Password',
                        labelStyle:   TextStyle(
                               fontSize: 18.sp,           
          fontWeight: FontWeight.bold, 
                            ),
                            enabledBorder:   OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ),
                        border:   OutlineInputBorder()),
                  ),
                 SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    controller: confirmpassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter The Crct Password";
                      }
                      return null;
                    },
                    obscureText: open,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon:
                              Icon(open ? Icons.visibility_off : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              open = !open;
                            });
                          },
                        ),
                        labelText: 'Confirm Password',
                        labelStyle:   TextStyle(
                               fontSize: 18.sp,           
          fontWeight: FontWeight.bold, 
                            ),
                            enabledBorder:   OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ),
                        border:   OutlineInputBorder()),
                  ),
        SizedBox(
                    height: 30.h,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setString("name", firstname.text);
                      
                      if (formkey.currentState!.validate()) {
                        var uid = FirebaseAuth.instance.currentUser!.uid;
                        await FirebaseFirestore.instance
                            .collection("User")
                            .doc(uid)
                            .set({
                          "firstname": firstname.text,
                          'lastname': lastname.text,
                          "email": email.text,
                          "dob": dob.text,
                          "phonenumber": phonenumber.text,
                          "password": password.text,
                          "confirmpassword": confirmpassword.text
                        });
                        ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
                          content: Text(
                            "Registration Successfully",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 1),
                        ));
                       context.pushNamed('main');
                      }
                    },style: ButtonStyle( backgroundColor:WidgetStateProperty.all<Color>(Colors.purple),),
                    child:    Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,backgroundColor: Colors.purple,
                      fontSize: 20),
                    ),
                  ),
                SizedBox(
                    height: 24.h,
                  ),
                  Wrap(
  spacing: 8, 
  children: [
      Text(
      "Already have an account?",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.sp,
      ),
    ),
    InkWell(
      child:   Text(
        'Log In',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
      onTap: () {
      context.pushNamed('profile');
      },
    ),
  ],
),
                   SizedBox(
                    height: 12.h,
                  ),
                    Divider(),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 250.w,
                    decoration: BoxDecoration(border: Border.all(width: 2.w)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdKMbkSnZrrX1GK4BdQ3NiDDsV7QROaFEpmQ&s",
                          height: 30.h,
                        ),
                          Text(
                          "Sign up with Google",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
