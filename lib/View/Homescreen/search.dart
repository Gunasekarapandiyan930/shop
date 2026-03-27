

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
 
List imagee = [
  {
    'image': 'assets/searchimages/61ev0qhPNAL.jpg',
    'name': 'Airdopes',
    'brand name': 'Boult',
    'price': 1999,
    'rating': 4.5,
    'description': 'Wireless earbuds with deep bass and 30 hours of playback.',
    'discount': '20%'
  },
  {
    'image': 'assets/searchimages/61R5tZkM6HL.jpg',
    'name': 'Neckbans',
    'brand name': 'Boat',
    'price': 1499,
    'rating': 4.4,
    'description': 'Bluetooth neckband earphones with fast charging.',
    'discount': '15%'
  },
  {
    'image': 'assets/searchimages/61xgHp8WIuL.jpg',
    'name': 'Water Bottles',
    'brand name': 'Sports',
    'price': 499,
    'rating': 4.3,
    'description': 'Stainless steel water bottle with 1L capacity.',
    'discount': '10%'
  },
  {
    'image': 'assets/searchimages/66e588053770f362c65f3246-samsung-50-class-du6900-crystal-uhd.jpg',
    'name': 'Smart Tv',
    'brand name': 'Samsung',
    'price': 45999,
    'rating': 4.6,
    'description': '50-inch 4K UHD Smart TV with Crystal Display.',
    'discount': '18%'
  },
  {
    'image': 'assets/searchimages/71h2c+bB-fL.jpg',
    'name': 'Party Speakers',
    'brand name': 'Boat',
    'price': 7999,
    'rating': 4.5,
    'description': 'Portable Bluetooth speaker with powerful bass.',
    'discount': '12%'
  },
  {
    'image': 'assets/searchimages/a7e2092c6c96f52e787b6608662dc5b5.png',
    'name': 'Vivo',
    'brand name': 'Mobiles',
    'price': 20999,
    'rating': 4.4,
    'description': 'Vivo smartphone with AMOLED display and 5G support.',
    'discount': '10%'
  },
  
  {
    'image': 'assets/searchimages/images.jpg',
    'name': 'DSLR Camera',
    'brand name': 'Canon',
    'price': 49999,
    'rating': 4.7,
    'description': 'Professional DSLR camera with 24MP sensor and 4K video.',
    'discount': '8%'
  },
  {
    'image': 'assets/searchimages/61V2qqll6nL.jpg',
    'name': 'Fridges',
    'brand name': 'Whirlpool',
    'price': 22999,
    'rating': 4.5,
    'description': 'Double-door refrigerator with energy-efficient cooling.',
    'discount': '15%'
  },
  {
    'image': 'assets/searchimages/slippers.jpg',
    'name': 'Slippers',
    'brand name': 'Men',
    'price': 399,
    'rating': 4.1,
    'description': 'Comfortable casual slippers for men.',
    'discount': '30%'
  },
  {
    'image': 'assets/searchimages/sneakers.jpg',
    'name': 'Sneakkers',
    'brand name': 'Shoes',
    'price': 1499,
    'rating': 4.3,
    'description': 'Trendy sneakers with cushioned sole for comfort.',
    'discount': '22%'
  },
  {
    'image': 'assets/searchimages/{56D358A9-4B91-4754-B309-1A3BFBC8F404}.png',
    'name': 'Sofa',
    'brand name': 'Decoration',
    'price': 15999,
    'rating': 4.6,
    'description': '3-seater sofa with premium fabric and modern design.',
    'discount': '14%'
  },
  {
    'image': 'assets/searchimages/Untitled acces.jpg',
    'name': 'Accessories',
    'brand name': 'Casuals',
    'price': 599,
    'rating': 4.2,
    'description': 'Stylish fashion accessories for casual outfits.',
    'discount': '18%'
  },
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
           
              children: [
                 InkWell(onTap: (){
                context.pop();                 },
                  child: const Icon(Icons.arrow_back)),
                   SizedBox(width: 20.w,),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          hintText: "Search anything....",hintStyle: TextStyle(fontWeight: FontWeight.bold),
                          suffixIcon: Icon(Icons.camera),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
         
           Row(
            children: [
              Text(
                "Popular Products :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp,),
              ),
            ],
          ),
         SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) => InkWell(onTap: () {
                    context.pushNamed('buying',extra:imagee[index] );
                
                },
                  child: Container(
                    height: 60.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2.w)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150.h,
                          width: 160.w,
                          child: Image.asset(
                            imagee[index]['image'],
                            fit: BoxFit.fill,
                          ),
                        ),
                         SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          imagee[index]['name'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          imagee[index]['brand name'],
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        
                        
                      ],
                    ),
                  ),
                ),
                itemCount: imagee.length,
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
