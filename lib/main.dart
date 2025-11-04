

import 'package:apkrestart/Screens/Categories/categories.dart';

import 'package:apkrestart/Screens/Homescreen/homescreen.dart';
import 'package:apkrestart/Screens/Profile/profilee.dart';
import 'package:apkrestart/Screens/accountpage.dart';
import 'package:apkrestart/config/router.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Future<void>_firebaseMessagingBackgroundHandler(RemoteMessage msg)async{
  await Firebase.initializeApp();
  print("Bg msg:${msg.messageId}");}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:   FirebaseOptions(
    apiKey: "AIzaSyAJkSmcdHbYqc9vqW9fpJbIWTxrF9VmuNI",
    appId: "1:860686353761:android:95ca80c768967f926cb120",
    messagingSenderId: "860686353761",
    projectId:"shopping-ea557",
  ));
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:   Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,builder: (context, child) {
       return  MaterialApp.router(
       routerConfig: router,
        title: 'APK Restart',
        debugShowCheckedModeBanner: false,
        
        
       // home: SplashScareen(),
      );
        
      },);
      
  }
}

class Main extends StatefulWidget {
    Main({super.key});

  @override
  State<Main> createState() => MainState();
}

class _MainState {}

class MainState extends State<Main> {
  String? token;
  final List<Widget> _screens = [
      Center(child: Text(" Home Page", style: TextStyle(fontSize: 25))),
      Center(
        child: Text(" Categories Page", style: TextStyle(fontSize: 25))),
      Center(child: Text(" Cart Page", style: TextStyle(fontSize: 25))),
      Center(child: Text(" Profile Page", style: TextStyle(fontSize: 25))),
  ];

  int _selectedIndex = 0;

  final List<Widget> allscreens = [
      Homescreen(),
      Categories(),
      AccountPage(),
     Profile(),
  ];
  @override
  void initState() {
   
    super.initState();
    FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.instance.getToken().then((t){
      setState(() { token = t ; });});
        FirebaseMessaging.onMessage.listen((RemoteMessage message) {   });
           FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {  });

  }

  void _onItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allscreens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration:   Duration(milliseconds: 500),

        backgroundColor: Colors.white,
        color:   Color(0xFF4A148C),

        onTap: _onItem,
       
        items:   [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.file_copy, color: Colors.white),
          Icon(Icons.card_travel_outlined, color: Colors.white),
          Icon(Icons.contact_page, color: Colors.white),
        ],
      ),
    );
  }
}
