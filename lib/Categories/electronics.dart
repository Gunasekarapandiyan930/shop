import 'package:apkrestart/Categories/detailingwomens.dart';
import 'package:flutter/material.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  List electronics = [
  {
    "name": "Smart LED TV 55 inch",
    "image": "assets/electronics/smart_tv.jpg",
    "price": 49999,
    "description": "Ultra HD 4K Smart LED TV with built-in streaming apps.",
    "rating": 4.7,
    "discount": "15%"
  },
  {
    "name": "Bluetooth Headphones",
    "image": "assets/electronics/bluetooth_heatphones.jpg",
    "price": 2999,
    "description": "Wireless over-ear headphones with noise cancellation.",
    "rating": 4.5,
    "discount": "20%"
  },
  {
    "name": "Smartwatch",
    "image": "assets/electronics/smartwatch.jpg",
    "price": 5999,
    "description": "Water-resistant smartwatch with heart rate monitoring.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Gaming Laptop",
    "image": "assets/electronics/gaming_laptop.jpg",
    "price": 89999,
    "description": "High-performance laptop with RTX 4060 GPU and 16GB RAM.",
    "rating": 4.8,
    "discount": "10%"
  },
  {
    "name": "Wireless Earbuds",
    "image": "assets/electronics/wireless_earbuds.jpg",
    "price": 2499,
    "description": "Compact earbuds with touch controls and deep bass.",
    "rating": 4.3,
    "discount": "18%"
  },
  {
    "name": "DSLR Camera",
    "image": "assets/electronics/dslr_camera.jpg",
    "price": 55999,
    "description": "24.1MP DSLR camera with 18-55mm lens kit.",
    "rating": 4.7,
    "discount": "14%"
  },
  {
    "name": "Bluetooth Speaker",
    "image": "assets/electronics/bluetooth_speaker.jpg",
    "price": 1999,
    "description": "Portable speaker with powerful bass and 12hr battery life.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Microwave Oven",
    "image": "assets/electronics/microwave.jpg",
    "price": 9999,
    "description": "23L convection microwave oven with auto-cook menu.",
    "rating": 4.4,
    "discount": "10%"
  },
  {
    "name": "Air Purifier",
    "image": "assets/electronics/air_purifier.jpg",
    "price": 12499,
    "description": "HEPA filter air purifier with real-time air quality display.",
    "rating": 4.6,
    "discount": "12%"
  },
  {
    "name": "Refrigerator 340L",
    "image": "assets/electronics/refregerator.jpg",
    "price": 38999,
    "description": "Double door frost-free refrigerator with inverter compressor.",
    "rating": 4.5,
    "discount": "8%"
  },
  {
    "name": "Washing Machine",
    "image": "assets/electronics/washing_machine.jpg",
    "price": 29999,
    "description": "Fully automatic front load washing machine, 7kg capacity.",
    "rating": 4.4,
    "discount": "9%"
  },
  {
    "name": "Tablet",
    "image": "assets/electronics/tablet.jpg",
    "price": 18999,
    "description": "10.5-inch display tablet with stylus support.",
    "rating": 4.3,
    "discount": "11%"
  },
  {
    "name": "Soundbar",
    "image": "assets/electronics/soundbar.jpg",
    "price": 7999,
    "description": "2.1 channel soundbar with subwoofer and Dolby Audio.",
    "rating": 4.5,
    "discount": "13%"
  },
  {
    "name": "Projector",
    "image": "assets/electronics/projector.jpg",
    "price": 15999,
    "description": "Full HD portable projector with 200-inch display support.",
    "rating": 4.2,
    "discount": "15%"
  },
  {
    "name": "Air Conditioner 1.5 Ton",
    "image": "assets/electronics/air_conditioner.jpg",
    "price": 42999,
    "description": "Inverter split AC with 5-star energy rating.",
    "rating": 4.6,
    "discount": "10%"
  }
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Electronic Products",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: electronics.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
               Detailingwomens(allproducts:electronics[index] ),));
            },
              child: Card(
                elevation: 6,
                child: Container(
                  height: 150,
                  width: 150,
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
                            electronics[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        electronics[index]['name'],
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