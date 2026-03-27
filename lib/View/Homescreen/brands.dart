
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  List brands = [
  {
    "name": "Apple",
    "image": "assets/brands/apple.jpg",
    "description": "Innovative technology company known for iPhones, Macs, and wearables.",
    "price": 197006,
    "origin_country": "USA",
    "rating": 4.9
  },
  {
    "name": "Samsung",
    "image": "assets/brands/samsung.jpg",
    "description": "Global leader in electronics, home appliances, and smartphones.",
    "price":21938,
    "origin_country": "South Korea",
    "rating": 4.8
  },
  {
    "name": "Nike",
    "image": "assets/brands/nike.jpg",
    "description": "Leading sportswear brand offering shoes, apparel, and accessories.",
    "price": 1999,
    "origin_country": "USA",
    "rating": 4.7
  },
  {
    "name": "Sony",
    "image": "assets/brands/sony.jpg",
    "description": "Japanese multinational known for electronics, gaming, and entertainment.",
    "price": 24999,
    "origin_country": "Japan",
    "rating": 4.8
  },
  {
    "name": "BMW",
    "image": "assets/brands/bmw.jpg",
    "description": "Luxury automobile manufacturer offering premium cars and bikes.",
    "price": 190000,
    "origin_country": "Germany",
    "rating": 4.9
  },
  {
    "name": "Canon",
    "image": "assets/brands/canon.jpg",
    "description": "Renowned for cameras, imaging, and optical products.",
    "price": 10099,
    "origin_country": "Japan",
    "rating": 4.8
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
          "Brands",
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
                itemCount: brands.length,
                itemBuilder: (context, index) =>
                 InkWell(onTap: () {
                    context.pushNamed('buying',extra: brands[index]);
                
                 },
                   child: Card(
                    elevation: 8,
                     child: Container(
                     // height: 1200.h,
                      margin: const EdgeInsets.all(10),
                     // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         
                           Image.asset(
                              brands[index]["image"],
                             // height: 120.h,
                              width: double.infinity,
                              fit: BoxFit.contain,
                              // fit: BoxFit.contain,
                            ),
                           SizedBox(height: 10.h),
                          
                          Text(
                            brands[index]["name"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),
                           SizedBox(height: 10.h),
                          Text("\$${brands[index]["price"].toString()}",
                            
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