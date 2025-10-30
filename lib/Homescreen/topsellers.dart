import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Topsellers extends StatefulWidget {
  const Topsellers({super.key});

  @override
  State<Topsellers> createState() => _TopsellersState();
}

class _TopsellersState extends State<Topsellers> {
  List topSellers = [
    {
    "name": "PlayStation 5",
    "image": "assets/topsellers/ps5.jpg",
    "price": 54999,
    "description": "Next-gen gaming console with ray tracing and ultra-fast SSD.",
    "rating": 4.9,
    "discount": "5%"
  },
  
  {
    "name": "Dyson V15 Vacuum Cleaner",
    "image": "assets/topsellers/dyson_vacuum.jpg",
    "price": 62999,
    "description": "Cordless vacuum cleaner with laser dust detection.",
    "rating": 4.8,
    "discount": "12%"
  },
  {
    "name": "iPhone 15 Pro Max",
    "image": "assets/topsellers/iphone15.jpg",
    "price": 145000,
    "description": "Apple's flagship smartphone with A17 Pro chip and titanium design.",
    "rating": 4.9,
    "discount": "10%"
  },
  {
    "name": "Samsung 75-inch QLED TV",
    "image": "assets/topsellers/samsung_qled.jpg",
    "price": 259999,
    "description": "4K Ultra HD Smart QLED TV with vivid colors and HDR support.",
    "rating": 4.8,
    "discount": "15%"
  },
  {
    "name": "Nike Air Zoom Pegasus",
    "image": "assets/topsellers/nike_shoes.jpg",
    "price": 8999,
    "description": "Lightweight running shoes with responsive cushioning.",
    "rating": 4.7,
    "discount": "20%"
  },
  {
    "name": "Sony WH-1000XM5 Headphones",
    "image": "assets/topsellers/sony_headphones.jpg",
    "price": 29999,
    "description": "Noise-cancelling wireless headphones with premium sound quality.",
    "rating": 4.8,
    "discount": "12%"
  },
  
 
  {
    "name": "MacBook Air M3",
    "image": "assets/topsellers/macbook_air.jpg",
    "price": 129999,
    "description": "Ultra-light laptop with Apple's latest M3 chip.",
    "rating": 4.8,
    "discount": "10%"
  },
  
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
          "Top Sellers",
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
                itemCount: topSellers.length,
                itemBuilder: (context, index) =>
                 InkWell(onTap: () {
                   context.pushNamed('buying',extra:topSellers[index] );
                
                 },
                   child: Card(
                    elevation: 8,
                     child: Container(
                  
                      margin: const EdgeInsets.all(10),
                 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         
                           Image.asset(
                              topSellers[index]["image"],
                            
                              width: double.infinity,
                              fit: BoxFit.contain,
                            
                            ),
                             SizedBox(height: 10.h),
                          
                          Text(
                            topSellers[index]["name"],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                           SizedBox(height: 10.h),
                          Text("\$${topSellers[index]["price"].toString()}",
                            
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