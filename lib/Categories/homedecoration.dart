import 'package:apkrestart/Categories/detailingwomens.dart';
import 'package:flutter/material.dart';

class Homedecoration extends StatefulWidget {
  const Homedecoration({super.key});

  @override
  State<Homedecoration> createState() => _HomedecorationState();
}

class _HomedecorationState extends State<Homedecoration> {
  List home =[
  {
    "name": "Wall Painting",
    "image":"assets/home/wall paint.jpg",
    "price": 2499,
    "description": "Hand-painted modern art for living room walls.",
    "rating": 4.7,
    "discount": "15%"
  },
  {
    "name": "Table Lamp",
    "image": "assets/home/tablelamb.jpg",
    "price": 1299,
    "description": "Stylish bedside table lamp with warm lighting.",
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Decorative Vase",
    "image": "assets/home/decorativevese.jpg",
    "price": 799,
    "description": "Ceramic decorative vase with floral design.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Wall Clock",
    "image": "assets/home/wallclock.jpg",
    "price": 999,
    "description": "Elegant wooden wall clock with silent mechanism.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Cushion Set",
    "image": "assets/home/cousinset.jpg",
    "price": 699,
    "description": "Soft cotton cushion set of 5 for sofa and bed.",
    "rating": 4.3,
    "discount": "8%"
  },
  {
    "name": "Photo Frame",
    "image": "assets/home/photoframe.jpg",
    "price": 499,
    "description": "Wooden photo frame for 5x7 inch pictures.",
    "rating": 4.5,
    "discount": "14%"
  },
  {
    "name": "Scented Candles",
    "image": "assets/home/candles.jpg",
    "price": 599,
    "description": "Pack of 4 aromatic candles for home fragrance.",
    "rating": 4.6,
    "discount": "18%"
  },
  {
    "name": "Wall Shelf",
    "image": "assets/home/wallshelf.jpg",
    "price": 1599,
    "description": "Modern floating wall shelf for decoration and storage.",
    "rating": 4.4,
    "discount": "10%"
  },
  {
    "name": "Indoor Plant",
    "image": "assets/home/indoor.jpg",
    "price": 799,
    "description": "Artificial indoor plant with ceramic pot.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Curtains",
    "image": "assets/home/curtains.jpg",
    "price": 1999,
    "description": "Elegant polyester curtains for living room windows.",
    "rating": 4.8,
    "discount": "25%"
  },
  {
    "name": "Mirror",
    "image": "assets/home/mirror.jpg",
    "price": 1799,
    "description": "Decorative wall mirror with antique frame.",
    "rating": 4.3,
    "discount": "10%"
  },
  {
    "name": "Floor Lamp",
    "image": "assets/home/floorlamp.jpg",
    "price": 2999,
    "description": "Tall standing floor lamp with modern design.",
    "rating": 4.4,
    "discount": "12%"
  },
  {
    "name": "Rug Carpet",
    "image": "assets/home/carpet.jpg",
    "price": 2499,
    "description": "Soft woolen rug for bedroom and living area.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Pendant Light",
    "image": "assets/home/pendent light.jpg",
    "price": 2199,
    "description": "Stylish pendant light for dining area.",
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Wall Stickers",
    "image": "assets/home/wall sticker.jpg",
    "price": 399,
    "description": "Peel and stick wall decals for kids' room.",
    "rating": 4.4,
    "discount": "18%"
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
          "Home Decorations",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: home.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
               Detailingwomens(allproducts:home[index] ),));
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
                            home[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        home[index]['name'],
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