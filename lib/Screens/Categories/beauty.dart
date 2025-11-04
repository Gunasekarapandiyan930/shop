import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Beauty extends StatefulWidget {
  const Beauty({super.key});

  @override
  State<Beauty> createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
  List beauty = [
  {
    "name": "Matte Liquid Lipstick",
    "image": "assets/beauty/lipstick.jpg",
    "price": 799,
    "description": "Long-lasting matte liquid lipstick with rich pigment.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Hydrating Face Serum",
    "image": "assets/beauty/serum.jpg",
    "price": 1499,
    "description": "Vitamin C + Hyaluronic acid serum for glowing skin.",
    "rating": 4.7,
    "discount": "15%"
  },
  {
    "name": "SPF 50 Sunscreen",
    "image": "assets/beauty/sunscreem.jpg",
    "price": 599,
    "description": "Non-greasy broad spectrum sunscreen for daily use.",
    "rating": 4.5,
    "discount": "10%"
  },
  {
    "name": "Oil Control Face Wash",
    "image": "assets/beauty/oilcontrol.jpg",
    "price": 299,
    "description": "Gentle cleanser that removes excess oil & impurities.",
    "rating": 4.3,
    "discount": "12%"
  },
  {
    "name": "Nourishing Night Cream",
    "image": "assets/beauty/nightscreem.jpg",
    "price": 1299,
    "description": "Deep repair night cream with peptides and ceramides.",
    "rating": 4.6,
    "discount": "18%"
  },
  {
    "name": "Volume Mascara",
    "image": "assets/beauty/mascara.jpg",
    "price": 499,
    "description": "Buildable volume mascara for fuller looking lashes.",
    "rating": 4.4,
    "discount": "10%"
  },
  {
    "name": "Precision Eyeliner",
    "image": "assets/beauty/eyeliner.jpg",
    "price": 349,
    "description": "Waterproof liquid eyeliner with fine tip.",
    "rating": 4.2,
    "discount": "8%"
  },
  {
    "name": "Compact Powder",
    "image": "assets/beauty/compact powder.jpg",
    "price": 549,
    "description": "Matte finish compact powder with light coverage.",
    "rating": 4.1,
    "discount": "14%"
  },
  {
    "name": "Face Toner",
    "image": "assets/beauty/toner.jpg",
    "price": 399,
    "description": "Alcohol-free toner to balance skin pH and refresh.",
    "rating": 4.3,
    "discount": "11%"
  },
  {
    "name": "Hand & Body Lotion",
    "image": "assets/beauty/lotion.jpg",
    "price": 449,
    "description": "Moisturizing lotion with shea butter and almond oil.",
    "rating": 4.5,
    "discount": "16%"
  },
  {
    "name": "Perfume Mist",
    "image": "assets/beauty/perfume_mist.jpg",
    "price": 999,
    "description": "Fresh floral perfume mist with long-lasting scent.",
    "rating": 4.6,
    "discount": "20%"
  },
  {
    "name": "Nail Polish Set (5 pcs)",
    "image": "assets/beauty/nailpolish.jpg",
    "price": 699,
    "description": "Vibrant long-wear nail polish set in trendy shades.",
    "rating": 4.4,
    "discount": "15%"
  },
  {
    "name": "Exfoliating Face Scrub",
    "image": "assets/beauty/face_scrub.jpg",
    "price": 349,
    "description": "Gentle scrub with natural beads for smooth skin.",
    "rating": 4.2,
    "discount": "10%"
  },
  {
    "name": "Sheet Mask (Pack of 3)",
    "image": "assets/beauty/mask.jpg",
    "price": 299,
    "description": "Hydrating sheet masks infused with aloe vera.",
    "rating": 4.5,
    "discount": "22%"
  },
  {
    "name": "Makeup Brush Set",
    "image": "assets/beauty/brush_set.jpg",
    "price": 1199,
    "description": "Premium 8-piece makeup brush set with pouch.",
    "rating": 4.7,
    "discount": "18%"
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
          "Beauty Products",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: beauty.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
             context.pushNamed('details',extra:beauty[index] );
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
                            beauty[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        beauty[index]['name'],
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