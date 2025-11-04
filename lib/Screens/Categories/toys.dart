import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Toys extends StatefulWidget {
  const Toys({super.key});

  @override
  State<Toys> createState() => _ToysState();
}

class _ToysState extends State<Toys> {
  List toys = [
  {
    "name": "Remote Control Car",
    "image": "assets/toys/rc_car.jpg",
    "price": 1499,
    "description": "High-speed rechargeable remote control racing car.",
    "rating": 4.6,
    "discount": "15%"
  },
  {
    "name": "Building Blocks Set",
    "image": "assets/toys/building_blocks.jpg",
    "price": 899,
    "description": "Colorful 100-piece building block set for kids.",
    "rating": 4.7,
    "discount": "20%"
  },
  {
    "name": "Teddy Bear",
    "image": "assets/toys/teddy_bear.jpg",
    "price": 599,
    "description": "Soft and cuddly teddy bear, 30 cm height.",
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Puzzle Game",
    "image": "assets/toys/puzzle_game.jpg",
    "price": 399,
    "description": "Wooden jigsaw puzzle for brain development.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Action Figure",
    "image": "assets/toys/action_figure.jpg",
    "price": 749,
    "description": "Superhero action figure with movable joints.",
    "rating": 4.3,
    "discount": "8%"
  },
  {
    "name": "Doll House",
    "image": "assets/toys/doll_house.jpg",
    "price": 2499,
    "description": "Wooden doll house with furniture set.",
    "rating": 4.6,
    "discount": "18%"
  },
  {
    "name": "Musical Keyboard",
    "image": "assets/toys/musical_keyboard.jpg",
    "price": 1299,
    "description": "Mini musical keyboard with multiple sound modes.",
    "rating": 4.5,
    "discount": "14%"
  },
  {
    "name": "Soft Ball Set",
    "image": "assets/toys/soft_ball.jpg",
    "price": 299,
    "description": "Pack of 3 soft balls for indoor and outdoor play.",
    "rating": 4.2,
    "discount": "10%"
  },
  {
    "name": "Train Set",
    "image": "assets/toys/train_set.jpg",
    "price": 1899,
    "description": "Electric train set with track and lights.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "RC Helicopter",
    "image": "assets/toys/rc_helicopter.jpg",
    "price": 2799,
    "description": "Remote control helicopter with LED lights.",
    "rating": 4.4,
    "discount": "15%"
  },
  {
    "name": "Stuffed Animal Set",
    "image": "assets/toys/stuffed_animals.jpg",
    "price": 999,
    "description": "Set of 3 cute stuffed animals for kids.",
    "rating": 4.5,
    "discount": "12%"
  },
  {
    "name": "Toy Kitchen Set",
    "image": "assets/toys/kitchen_set.jpg",
    "price": 1599,
    "description": "Mini kitchen playset with utensils and accessories.",
    "rating": 4.7,
    "discount": "18%"
  },
  {
    "name": "Water Gun",
    "image": "assets/toys/water_gun.jpg",
    "price": 499,
    "description": "Colorful water gun for summer outdoor fun.",
    "rating": 4.3,
    "discount": "10%"
  },
  {
    "name": "Sports Kit",
    "image": "assets/toys/sports_kit.jpg",
    "price": 899,
    "description": "Kids sports kit with bat, ball, and gloves.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Magic Kit",
    "image": "assets/toys/magic_kit.jpg",
    "price": 699,
    "description": "Beginner-friendly magic tricks kit for kids.",
    "rating": 4.5,
    "discount": "15%"
  }
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
          "Toys",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: toys.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
         context.pushNamed('details',extra: toys[index]);
            },
              child: Card(
                elevation: 6,
                child: Container(
                  height: 150.h,
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
                          height: 220.h,
                          width: double.infinity,
                          child: Image.asset(
                            toys[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        toys[index]['name'],
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
      ),);
  }
}