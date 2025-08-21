
import 'package:apkrestart/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  final mydata;
  const Edit({super.key, this.mydata});

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
            padding: const EdgeInsets.all(20.0),
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
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                        const SizedBox(width: 20),
                        const Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: firstname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur name";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        labelText: "Firstname",
                        labelStyle: TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue),
                        ),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: lastname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter ur lastname";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        labelText: 'Last name', labelStyle: TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                         border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
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
                    decoration: const InputDecoration(
                        labelText: 'Email',
                         labelStyle: TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ), border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
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
                    decoration: const InputDecoration(
                        labelText: 'Date of Birth',
                         labelStyle: TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
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
                    decoration: const InputDecoration(
                        labelText: 'Mobile Number',
                         labelStyle: TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
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
                         labelStyle: const TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 24,
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
                         labelStyle: const TextStyle(
                           fontSize: 18,           
      fontWeight: FontWeight.bold, 
                        ),
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Container(
                        height: 50,
                        width: 120,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,fontSize: 18,
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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          "update Success",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 1),
                      ));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Main(),
                          ));
                    },
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
