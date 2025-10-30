
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Flashdeal extends StatefulWidget {
  const Flashdeal({super.key});

  @override
  State<Flashdeal> createState() => _FlashdealState();
}

class _FlashdealState extends State<Flashdeal> {
  List flashdeals = [
  {
    "name": "iPhone 15 Pro Max",
    "image": "assets/flashdeals/iphone15.jpg",
    "original_price": 1600,
    "price": 1450,
    "description": "Apple's latest flagship phone with A17 Pro chip and titanium body.",
    "rating": 4.9,
    "deal_end": "2025-08-20"
  },
  {
    "name": "Samsung 4K Smart TV 55\"",
    "image": "assets/flashdeals/samsung_tv.jpg",
    "original_price": 800,
    "price": 650,
    "description": "Crystal UHD display, smart features, and slim design.",
    "rating": 4.7,
    "deal_end": "2025-08-15"
  },
  {
    "name": "Sony WH-1000XM5 Headphones",
    "image": "assets/flashdeals/sony_headphones.jpg",
    "original_price": 400,
    "price": 320,
    "description": "Industry-leading noise cancellation with premium sound quality.",
    "rating": 4.8,
    "deal_end": "2025-08-18"
  },
  {
    "name": "ASUS ROG Gaming Laptop",
    "image": "assets/flashdeals/asus_rog.jpg",
    "price": 2200,
    "discounted_price": 1899,
    "description": "High performance gaming laptop with RTX 4080 GPU.",
    "rating": 4.9,
    "deal_end": "2025-08-25"
  },
  {
    "name": "Nike Air Max 2024",
    "image": "assets/flashdeals/nike_airmax.jpg",
    "price": 150,
    "discounted_price": 110,
    "description": "Stylish and comfortable sports shoes for all-day wear.",
    "rating": 4.6,
    "deal_end": "2025-08-16"
  },
  {
    "name": "Canon EOS R6 Camera",
    "image": "assets/flashdeals/canon_r6.jpg",
    "price": 2500,
    "discounted_price": 2100,
    "description": "Full-frame mirrorless camera with advanced autofocus.",
    "rating": 4.8,
    "deal_end": "2025-08-22"
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
          "Flash Deals",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                    crossAxisCount: 2),
                itemCount: flashdeals.length,
                itemBuilder: (context, index) =>
                 InkWell(onTap: () {
                   context.pushNamed('buying',extra: flashdeals[index]);
                 },
                   child: Card(
                    elevation: 8,
                     child: Container(
                     // height:1200,
                      margin: const EdgeInsets.all(10),
                     // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         
                           Image.asset(
                              flashdeals[index]["image"],
                             // height: 120,
                              width: double.infinity,
                              fit: BoxFit.contain,
                              // fit: BoxFit.contain,
                            ),
                             SizedBox(height: 10.h),
                          
                          Text(
                            flashdeals[index]["name"],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                           SizedBox(height: 10.h),
                          Text("\$${flashdeals[index]["price"].toString()}",
                            
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                                     ),
                   ),
                 ),
              ),
            )
          ],
        ),
      ),
    );
  }
}