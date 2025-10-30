import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScareen extends StatefulWidget {
  const SplashScareen({super.key});

  @override
  State<SplashScareen> createState() => _SplashScareenState();
}

class _SplashScareenState extends State<SplashScareen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),(){
       context.pushNamed('profile');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 200,backgroundColor:Colors.blue,
              child: Image.network("https://png.pngtree.com/png-clipart/20240528/original/pngtree-online-shopping-logo-png-image_15192797.png"),
              ),
          ),

        ],
      ),
    );
  }
}