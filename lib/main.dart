
import 'package:apkrestart/Homescreen/homescreen.dart';
import 'package:apkrestart/Categories/categories.dart';
import 'package:apkrestart/Profile/profilee.dart';
import 'package:apkrestart/accountpage.dart';
import 'package:apkrestart/splashscreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future<void>_firebaseMessagingBackgroundHandler(RemoteMessage msg)async{
  await Firebase.initializeApp();
  print("Bg msg:${msg.messageId}");}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyAJkSmcdHbYqc9vqW9fpJbIWTxrF9VmuNI",
    appId: "1:860686353761:android:95ca80c768967f926cb120",
    messagingSenderId: "860686353761",
    projectId:"shopping-ea557",
  ));
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'APK Restart',
      debugShowCheckedModeBanner: false,
      
      
      home: SplashScareen(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => MainState();
}

class _MainState {}

class MainState extends State<Main> {
  String? token;
  final List<Widget> _screens = [
    const Center(child: Text(" Home Page", style: TextStyle(fontSize: 25))),
    const Center(
        child: Text(" Categories Page", style: TextStyle(fontSize: 25))),
    const Center(child: Text(" Cart Page", style: TextStyle(fontSize: 25))),
    const Center(child: Text(" Profile Page", style: TextStyle(fontSize: 25))),
  ];

  int _selectedIndex = 0;

  final List<Widget> allscreens = [
    const Homescreen(),
    const Categories(),
    const AccountPage(),
    const Profile(),
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
        animationDuration: const Duration(milliseconds: 500),

        backgroundColor: Colors.white,
        color: const Color(0xFF4A148C),

        onTap: _onItem,
       
        items: const [
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
