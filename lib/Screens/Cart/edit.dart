
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Edit extends StatefulWidget {
  final mydata;
    Edit({super.key, this.mydata});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final email = TextEditingController();
  final dob = TextEditingController();
  final phonenumber = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  bool open = true;
  bool eye = true;

  @override
  void initState() {
    firstname.text = widget.mydata["firstname"]?.toString() ?? '';
    lastname.text = widget.mydata["lastname"]?.toString() ?? '';
    email.text = widget.mydata["email"]?.toString() ?? '';
    dob.text = widget.mydata["dob"]?.toString() ?? '';
    phonenumber.text = widget.mydata["phonenumber"]?.toString() ?? '';
    password.text = widget.mydata["password"]?.toString() ?? '';
    confirmpassword.text = widget.mydata["confirmpassword"]?.toString() ?? '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Padding(
            padding:   EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon:   Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                          SizedBox(width: 20),
                          Text(
                          "Edit Profile",
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
                        labelText: "Firstname",
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
                        labelText: 'Last name', labelStyle: TextStyle(
                           fontSize: 18.sp,           
      fontWeight: FontWeight.bold, 
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
                    decoration:  InputDecoration(
                        labelText: 'Date of Birth',
                         labelStyle: TextStyle(
                           fontSize: 18.sp,           
      fontWeight: FontWeight.bold, 
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
                          icon: Icon(
                              eye ? Icons.visibility_off : Icons.visibility),
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
                          icon: Icon(
                              open ? Icons.visibility_off : Icons.visibility),
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
                        border:   OutlineInputBorder()),
                  ),
              SizedBox(
                    height: 30.h,
                  ),
                  InkWell(
                    child: Container(
                        height: 50.h,
                        width: 120.w,
                        color: Colors.red,
                        child:  Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    onTap: () async {
                      var res = FirebaseAuth.instance.currentUser!.uid;
                      await FirebaseFirestore.instance
                          .collection("User")
                          .doc(res)
                          .update({
                        "firstname": firstname.text.trim(),
                        "lastname": lastname.text.trim(),
                        "email": email.text.trim(),
                        "dob": dob.text.trim(),
                        "phonenumber": phonenumber.text.trim(),
                        "password": password.text.trim(),
                        "confirmpassword": confirmpassword.text.trim()
                      });
                      ScaffoldMessenger.of(context).showSnackBar(  SnackBar(
                        content: Text(
                          "update Success",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 1),
                      ));
                      context.pushNamed('main');
                    
                    },
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
