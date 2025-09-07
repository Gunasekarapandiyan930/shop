import 'package:apkrestart/Profile/profilee.dart';
import 'package:apkrestart/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

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
          width: double.infinity,decoration: const BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage('https://i.pinimg.com/236x/b9/70/40/b970409ee8382fb687bb9c2a5a97f9e9.jpg'))
        ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
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
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                        const SizedBox(width: 20),
                        const Text(
                          "Registration",
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
                        labelText: 'First name',
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
                        labelText: 'Last name',
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
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
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
                          icon: Icon(eye ? Icons.visibility_off : Icons.visibility),
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
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
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
                          icon:
                              Icon(open ? Icons.visibility_off : Icons.visibility),
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
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.lightBlue),
                            ),
                        border: const OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
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
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                            "Registration Successfully",
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
                      }
                    },style: ButtonStyle( backgroundColor:WidgetStateProperty.all<Color>(Colors.purple),),
                    child:  const Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,backgroundColor: Colors.purple,
                      fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Wrap(
  spacing: 8, 
  children: [
    const Text(
      "Already have an account?",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),
    InkWell(
      child: const Text(
        'Log In',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      },
    ),
  ],
),
                 /* Row(
                    children: [
                      const Text("Already have an account?",
                       style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18),),
                      const SizedBox(
                        width: 14,
                      ),
                      InkWell(
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(),
                              ));
                        },
                      )
                    ],
                  ),*/
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdKMbkSnZrrX1GK4BdQ3NiDDsV7QROaFEpmQ&s",
                          height: 30,
                        ),
                        const Text(
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
