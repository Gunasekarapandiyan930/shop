import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Sports extends StatefulWidget {
  const Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  List sports = [
  {
    "name": "Cricket Bat",
    "image": "assets/sports/bat.jpg",
    "price": 2499,
    "description": "Professional grade English willow cricket bat for tournaments.",
    "rating": 4.7,
    "discount": "15%"
  },
  {
    "name": "Football",
    "image": "assets/sports/football.jpg",
    "price": 899,
    "description": "Premium quality leather football for outdoor play.",
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Tennis Racket",
    "image": "assets/sports/tennis bat.jpg",
    "price": 3299,
    "description": "Lightweight graphite tennis racket for beginners and pros.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Basketball",
    "image": "assets/sports/basketball.jpg",
    "price": 1299,
    "description": "Durable rubber basketball suitable for indoor and outdoor use.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Badminton Shuttlecock",
    "image": "assets/sports/badmitton.jpeg",
    "price": 299,
    "description": "Feather shuttlecock pack of 12 for smooth flight.",
    "rating": 4.3,
    "discount": "8%"
  },
  {
    "name": "Hockey Stick",
    "image": "assets/sports/hocky.jpg",
    "price": 1799,
    "description": "Fiberglass reinforced hockey stick for professional play.",
    "rating": 4.5,
    "discount": "14%"
  },
  {
    "name": "Boxing Gloves",
    "image": "assets/sports/boxing.jpg",
    "price": 1499,
    "description": "Premium padded boxing gloves for comfort and safety.",
    "rating": 4.6,
    "discount": "18%"
  },
  {
    "name": "Yoga Mat",
    "image": "assets/sports/yoga.jpg",
    "price": 799,
    "description": "Non-slip yoga mat for home and studio workouts.",
    "rating": 4.4,
    "discount": "10%"
  },
  {
    "name": "Skateboard",
    "image": "assets/sports/skating.jpg",
    "price": 2199,
    "description": "Maple wood skateboard with smooth PU wheels.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Golf Kit",
    "image": "assets/sports/golf.jpg",
    "price": 9999,
    "description": "Complete golf kit with clubs, balls, and carry bag.",
    "rating": 4.8,
    "discount": "25%"
  },
  {
    "name": "Swimming Goggles",
    "image": "assets/sports/swimming.jpg",
    "price": 499,
    "description": "Anti-fog UV-protected swimming goggles.",
    "rating": 4.3,
    "discount": "10%"
  },
  {
    "name": "Table Tennis Paddle",
    "image": "assets/sports/tabletennis.jpg",
    "price": 699,
    "description": "Lightweight table tennis paddle for fast play.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Climbing Rope",
    "image": "assets/sports/climbing.jpg",
    "price": 1599,
    "description": "Strong nylon climbing rope for sports and adventure.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Volleyball",
    "image": "assets/sports/volleyball.jpg",
    "price": 799,
    "description": "Durable PU volleyball for indoor and beach play.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Roller Skates",
    "image": "assets/sports/rollerskates.jpg",
    "price": 2499,
    "description": "Adjustable roller skates with soft padding and smooth wheels.",
    "rating": 4.4,
    "discount": "18%"
  }
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
             context.pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Sports",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: sports.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              context.pushNamed('details',extra: sports[index]);
            },
              child: Card(
                elevation: 6,
                child: Container(
                  height: 150,
                  width: 150.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                        ),
                        child: SizedBox(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            sports[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        sports[index]['name'],
                        style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}