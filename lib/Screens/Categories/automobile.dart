import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Automobile extends StatefulWidget {
  const Automobile({super.key});

  @override
  State<Automobile> createState() => _AutomobileState();
}

class _AutomobileState extends State<Automobile> {
  List automobiles = [
  {
    "name": "Honda City 2024",
    "image": "assets/automobiles/honda_city_rs_cvt_0000.jpg",
    "price": 14500,
    "description": "A premium sedan with smooth performance, spacious interior, and advanced safety features.",
    "rating": 4.6,
    "discount": "10%"
  },
  {
    "name": "Yamaha R15 V4",
    "image": "assets/automobiles/r15v4.jpg",
    "price": 3200,
    "description": "A sporty motorcycle with excellent handling, stylish design, and efficient engine.",
    "rating": 4.8,
    "discount": "5%"
  },
  
  {
    "name": "Tesla Model 3",
    "image": "assets/automobiles/tesla.jpg",
    "price": 35000,
    "description": "An electric sedan with long range, autopilot features, and eco-friendly performance.",
    "rating": 4.9,
    "discount": "8%"
  },
  {
    "name": "Royal Enfield Classic 350",
    "image": "assets/automobiles/enfield.jpg",
    "price": 2500,
    "description": "A retro-style motorcycle with smooth ride, strong build, and powerful torque.",
    "rating": 4.5,
    "discount": "6%"
  },
  {
    "name": "Hyundai Creta 2024",
    "image": "assets/automobiles/huyndai.jpg",
    "price": 18000,
    "description": "A stylish compact SUV with premium interior and advanced features.",
    "rating": 4.6,
    "discount": "9%"
  },
  {
    "name": "BMW X5",
    "image": "assets/automobiles/bmw.jpg",
    "price": 60000,
    "description": "A luxury SUV with high performance, advanced technology, and premium comfort.",
    "rating": 4.9,
    "discount": "7%"
  },
  {
    "name": "Suzuki Swift 2024",
    "image": "assets/automobiles/suzuki-1115280-scaled.jpg",
    "price": 9000,
    "description": "A compact hatchback with sporty design, fuel efficiency, and modern features.",
    "rating": 4.4,
    "discount": "6%"
  },
  {
    "name": "KTM Duke 390",
    "image": "assets/automobiles/ktm.jpg",
    "price": 3500,
    "description": "A powerful street bike with aggressive styling and performance.",
    "rating": 4.7,
    "discount": "5%"
  },
  {
    "name": "Ford Mustang GT",
    "image": "assets/automobiles/ford.jpg",
    "price": 55000,
    "description": "An iconic muscle car with a powerful V8 engine and stunning looks.",
    "rating": 4.9,
    "discount": "8%"
  },
  {
    "name": "Tata Nexon EV",
    "image": "assets/automobiles/Nexon.ev-Front-3-4th-1-scaled.jpg",
    "price": 19000,
    "description": "An electric compact SUV with modern styling and eco-friendly drive.",
    "rating": 4.6,
    "discount": "10%"
  },
  {
    "name": "Kawasaki Ninja 650",
    "image": "assets/automobiles/kawaski.jpg",
    "price": 7500,
    "description": "A sport bike with smooth power delivery and comfortable riding position.",
    "rating": 4.8,
    "discount": "7%"
  },
  {
    "name": "Audi Q7",
    "image": "assets/automobiles/audi.jpg",
    "price": 65000,
    "description": "A luxury SUV with advanced tech, comfort, and strong road presence.",
    "rating": 4.9,
    "discount": "9%"
  },
  {
    "name": "Jeep Wrangler",
    "image": "assets/automobiles/jeep.jpg",
    "price": 45000,
    "description": "A rugged off-road SUV with unmatched adventure capabilities.",
    "rating": 4.8,
    "discount": "11%"
  },
  {
    "name": "Maruti Baleno 2024",
    "image": "assets/automobiles/maruthi.jpg",
    "price": 9500,
    "description": "A premium hatchback with spacious cabin, smooth ride, and high efficiency.",
    "rating": 4.5,
    "discount": "6%"
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
        title:  const Text(
          "Automobiles",
          style:TextStyle(color: Colors.white)
        ),
      ),
      body: GridView.builder(
        itemCount: automobiles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              context.pushNamed(extra:  automobiles[index],'details' );
            
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
                            automobiles[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        automobiles[index]['name'],
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