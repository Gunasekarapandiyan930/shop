import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Kidscloth extends StatefulWidget {
  const Kidscloth({super.key});

  @override
  State<Kidscloth> createState() => _KidsclothState();
}

class _KidsclothState extends State<Kidscloth> {
  List kids = [
     {
    "name": "Cotton T-Shirt",
    "image": "assets/kids/cotton tshirts.jpg",
    "description": "Soft cotton t-shirt with fun cartoon print.",
    "price": 299,
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Denim Shorts",
    "image": "assets/kids/shorts.jpg",
    "description": "Comfortable denim shorts for summer wear.",
    "price": 399,
    "rating": 4.2,
    "discount": "15%"
  },
  {
    "name": "Party Frock",
    "image": "assets/kids/party.jpg",
    "description": "Elegant frock with floral design for special occasions.",
    "price": 899,
    "rating": 4.8,
    "discount": "20%"
  },
  {
    "name": "Winter Jacket",
    "image": "assets/kids/jackets.jpg",
    "description": "Warm and cozy jacket for cold days.",
    "price": 1299,
    "rating": 4.7,
    "discount": "25%"
  },
  {
    "name": "Cotton Shorts Set",
    "image": "assets/kids/shorts.jpg",
    "description": "Two-piece cotton shorts and t-shirt set.",
    "price": 499,
    "rating": 4.3,
    "discount": "12%"
  },
  {
    "name": "Hoodie Sweatshirt",
    "image": "assets/kids/hoodie.jpg",
    "description": "Stylish hoodie for casual outings.",
    "price": 699,
    "rating": 4.4,
    "discount": "18%"
  },
  {
    "name": "Dungaree Dress",
    "image": "assets/kids/dungaari.jpg",
    "description": "Denim dungaree dress with front pocket.",
    "price": 799,
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Printed Pajamas",
    "image": "assets/kids/printed.jpg",
    "description": "Comfy pajamas with cute animal prints.",
    "price": 349,
    "rating": 4.5,
    "discount": "15%"
  },
  {
    "name": "Sleeveless Dress",
    "image": "assets/kids/sleeveless.jpg",
    "description": "Light summer dress with breathable fabric.",
    "price": 599,
    "rating": 4.2,
    "discount": "10%"
  },
  {
    "name": "Track Pants",
    "image": "assets/kids/trackpants.jpg",
    "description": "Comfortable track pants for daily wear.",
    "price": 399,
    "rating": 4.4,
    "discount": "15%"
  },
  {
    "name": "Woolen Sweater",
    "image": "assets/kids/woolan.jpg",
    "description": "Hand-knitted woolen sweater for winter.",
    "price": 999,
    "rating": 4.9,
    "discount": "25%"
  },
  {
    "name": "Ethnic Kurta Set",
    "image": "assets/kids/kurta.jpg",
    "description": "Traditional kurta set with embroidery.",
    "price": 1099,
    "rating": 4.7,
    "discount": "20%"
  },
  {
    "name": "Raincoat",
    "image": "assets/kids/raincoat.jpg",
    "description": "Waterproof raincoat with hood.",
    "price": 549,
    "rating": 4.3,
    "discount": "12%"
  },
  {
    "name": "Casual Shirt",
    "image": "assets/kids/shirts.jpg",
    "description": "Button-down casual shirt with stripes.",
    "price": 449,
    "rating": 4.4,
    "discount": "10%"
  },
  {
    "name": "Sports Jersey",
    "image": "assets/kids/sports.jpg",
    "description": "Lightweight sports jersey for active kids.",
    "price": 399,
    "rating": 4.6,
    "discount": "15%"
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
          "Kids Cloth",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: kids.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
               context.pushNamed('details',extra: kids[index]);
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
                            kids[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
              
                      Center(
                          child: Text(
                        kids[index]['name'],
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