import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cellphones extends StatefulWidget {
  const Cellphones({super.key});

  @override
  State<Cellphones> createState() => _CellphonesState();
}

class _CellphonesState extends State<Cellphones> {
  List cellphones = [
  {
    "name": "iPhone 15 Pro",
    "image": "assets/cellphones/iphone15pro.jpg",
    "price": 129999,
    "description": "6.1-inch Super Retina XDR display, A17 Pro chip, triple camera.",
    "rating": 4.9,
    "discount": "5%"
  },
  {
    "name": "Samsung Galaxy S24 Ultra",
    "image": "assets/cellphones/s24ultra.jpg",
    "price": 118999,
    "description": "6.8-inch QHD+ AMOLED, Snapdragon 8 Gen 3, 200MP camera.",
    "rating": 4.8,
    "discount": "8%"
  },
  {
    "name": "OnePlus 12",
    "image": "assets/cellphones/oneplus12.jpg",
    "price": 65999,
    "description": "6.7-inch AMOLED, Snapdragon 8 Gen 3, 5400mAh battery.",
    "rating": 4.7,
    "discount": "10%"
  },
  {
    "name": "Google Pixel 8 Pro",
    "image": "assets/cellphones/pixel8pro.jpg",
    "price": 94999,
    "description": "6.7-inch OLED, Google Tensor G3 chip, AI-powered camera.",
    "rating": 4.8,
    "discount": "6%"
  },
  {
    "name": "Xiaomi 14 Pro",
    "image": "assets/cellphones/xiaomi14pro.jpg",
    "price": 58999,
    "description": "6.73-inch AMOLED, Snapdragon 8 Gen 3, 120W fast charging.",
    "rating": 4.6,
    "discount": "12%"
  },
  {
    "name": "Realme GT 5 Pro",
    "image": "assets/cellphones/realmegt5pro.jpg",
    "price": 49999,
    "description": "6.78-inch AMOLED, Snapdragon 8 Gen 3, periscope telephoto camera.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Vivo X100 Pro",
    "image": "assets/cellphones/vivox100pro.jpg",
    "price": 74999,
    "description": "6.78-inch AMOLED, Dimensity 9300 chip, Zeiss optics camera.",
    "rating": 4.7,
    "discount": "10%"
  },
  {
    "name": "iQOO 12",
    "image": "assets/cellphones/iqoo12.jpg",
    "price": 52999,
    "description": "6.78-inch AMOLED, Snapdragon 8 Gen 3, 144Hz refresh rate.",
    "rating": 4.6,
    "discount": "12%"
  },
  {
    "name": "Motorola Edge 40 Ultra",
    "image": "assets/cellphones/motoedge40ultra.jpg",
    "price": 47999,
    "description": "6.67-inch pOLED, Snapdragon 8 Gen 2, 125W fast charging.",
    "rating": 4.5,
    "discount": "14%"
  },
  {
    "name": "Asus ROG Phone 8",
    "image": "assets/cellphones/rogphone8.jpg",
    "price": 89999,
    "description": "6.78-inch AMOLED, Snapdragon 8 Gen 3, gaming triggers.",
    "rating": 4.8,
    "discount": "7%"
  },
  {
    "name": "Nothing Phone (2)",
    "image": "assets/cellphones/nothingphone2.jpg",
    "price": 44999,
    "description": "6.7-inch OLED, Snapdragon 8+ Gen 1, Glyph interface.",
    "rating": 4.6,
    "discount": "12%"
  },
  {
    "name": "Oppo Find X7 Pro",
    "image": "assets/cellphones/oppofindx7pro.jpg",
    "price": 79999,
    "description": "6.82-inch AMOLED, Snapdragon 8 Gen 3, Hasselblad camera.",
    "rating": 4.7,
    "discount": "9%"
  },
  {
    "name": "Sony Xperia 1 V",
    "image": "assets/cellphones/xperia1v.jpg",
    "price": 94999,
    "description": "4K OLED display, Snapdragon 8 Gen 2, pro camera features.",
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Honor Magic 6 Pro",
    "image": "assets/cellphones/honormagic6pro.jpg",
    "price": 69999,
    "description": "6.8-inch AMOLED, Snapdragon 8 Gen 3, 5600mAh battery.",
    "rating": 4.6,
    "discount": "11%"
  },
  {
    "name": "Huawei Mate 60 Pro",
    "image": "assets/cellphones/mate60pro.jpg",
    "price": 89999,
    "description": "6.82-inch OLED, Kirin 9000S chip, triple camera setup.",
    "rating": 4.4,
    "discount": "8%"
  }
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
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
          "Cellphones",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: cellphones.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              context.pushNamed('details',extra:cellphones[index] );
            
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
                            cellphones[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        cellphones[index]['name'],
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