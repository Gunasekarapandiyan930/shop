import 'package:apkrestart/main.dart';
import 'package:apkrestart/Profile/mobnumber.dart';
import 'package:apkrestart/Profile/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  
  const Profile({super.key});

  @override
  State<Profile> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Profile> {
  bool box = false;
  
  TextEditingController email =TextEditingController();
   TextEditingController password =TextEditingController();
   final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: MediaQuery.of(context).size.height,width: double.infinity,
        decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA6xI4Hw3Kv4Dd0P06gdT058DplHcKFMdOxQ&s"))),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(),
                SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.network(
                        "https://cdn-icons-png.flaticon.com/128/3081/3081559.png")),
                Container(
                  margin: const EdgeInsets.only(
                    top: 50,
                    left: 20,
                    right: 20,
                  ),
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "SIGN IN",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                           color: const Color.fromARGB(255, 4, 114, 204),
                         
                        ),
                        child: Center(
                          child: TextFormField(
                            style: const TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                            controller: email,
                         validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter your email";
                              
                            }else
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                            return 'please enter ur crct email';
                            }
                            return null;
                            
                          },
                            decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                           color: const Color.fromARGB(255, 4, 114, 204),
                          
                        ),
                        child: Center(
                          child: TextFormField(
                              style: const TextStyle(
                            color: Colors.white,fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                            controller: password,
                            decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            //fontSize: 20
                          ),
                        ),
                      ),
                      
                      const SizedBox(
                        height: 20,
                      ),
                     /* InkWell(
                        onTap: () {
                          setState(() {
                            box = !box;
                          });
                        },
                        child: Container(
                          
                          height: 20,width: 20,decoration: BoxDecoration(
                            color: box == true ? Colors.red: Colors.white,
                            
                            border: Border.all(width: 2)
                          ),
                          child: Column(
                            children: [
                              Icon(box == true ? Icons.fork_right:Icons.hourglass_empty),
                              box == true ? const SizedBox(
                                height: 40,width: 100,child: Text('submit'),
                              ): const Text('plese select the check box')
                            ],
                          ),
                           
                        ),
                      ),*/
                      
                      
           
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                      
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 4, 114, 204),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                          onTap: ()async {
                        if (formkey.currentState!.validate()) {
                            var res =await FirebaseAuth.instance.signInWithEmailAndPassword
                     (email: email.text, password: password.text);
                     
                      Navigator.push(context, MaterialPageRoute(builder:
                       (context) => const Main(),));
                        
        
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login successfully",),duration: Duration(
                              seconds: 2
                            ),backgroundColor: Colors.green,
                            ));
                      }
                      },
        
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp(),));
                          },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                     
                      
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Sign In With",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),const SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Container(height: 20,width: 20,decoration: const BoxDecoration(
                          shape: BoxShape.circle
                        ),
                          child: InkWell(onTap: () {
                            
                          },
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdKMbkSnZrrX1GK4BdQ3NiDDsV7QROaFEpmQ&s",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),const SizedBox(width: 20,),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                        radius: 25,
                        child: Container(height: 30,width: 30,decoration: const BoxDecoration(
                          shape: BoxShape.circle
                        ),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3bs7ImPUjJBAVwguTmI9u9g10SJnDYKiYaQ&s",
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(width: 20,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MobileNumber(),));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          radius: 25,
                          child: Container(height: 30,width: 30,decoration: const BoxDecoration(
                            shape: BoxShape.circle
                          ),
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
    );
  }
}
