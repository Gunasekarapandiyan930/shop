import 'package:apkrestart/Categories/detailingwomens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Womenscloth extends StatefulWidget {
  const Womenscloth({super.key});

  @override
  State<Womenscloth> createState() => _WomensclothState();
}

class _WomensclothState extends State<Womenscloth> {
  List clothes = [
    {
      "name": "Blue Saree",
      "image": "assets/womens/Blue saree.jpg",
      "price": 2499,
      "rating": 4.7,
      "description": "Traditional silk saree with gold border.",
      "discount": "15%"
    },
    {
      "name": "Black gown",
      "image": "assets/womens/Black gown.jpg",
      "price": 3299,
      "rating": 4.8,
      "description": "Floor-length black evening gown with lace design.",
      "discount": "25%"
    },
    {
      "name": "Floral Summer Dress",
      "image": "assets/womens/Floral dress.jpg",
      "price": 999,
      "rating": 4.3,
      "description": "Lightweight cotton summer dress with floral patterns.",
      "discount": "10%"
    },
    {
      "name": "Pink Lehenga",
      "image": "assets/womens/pink.jpg",
      "price": 3999,
      "rating": 4.6,
      "description": "Designer pink lehenga with heavy embroidery.",
      "discount": "30%"
    },
    {
      "name": "White Wedding Gown",
      "image": "assets/womens/white.jpg",
      "price": 5999,
      "rating": 4.9,
      "description": "Classic white wedding gown with satin finish.",
      "discount": "35%"
    },
    {
      "name": "Yellow Kurti",
      "image": "assets/womens/yellow.jpg",
      "price": 799,
      "rating": 4.2,
      "description": "Bright yellow cotton kurti for casual wear.",
      "discount": "5%"
    },
    {
      "name": "Purple Salwar Suit",
      "image": "assets/womens/purple.jpg",
      "price": 1499,
      "rating": 4.4,
      "description": "Purple salwar suit with printed dupatta.",
      "discount": "15%"
    },
    {
      "name": "Denim Jacket",
      "image": "assets/womens/denim.jpg",
      "price": 1299,
      "rating": 4.6,
      "description": "Classic blue denim jacket with button closure.",
      "discount": "10%"
    },
    {
      "name": "Green Skirt",
      "image": "assets/womens/skirt.jpg",
      "price": 699,
      "rating": 4.1,
      "description": "Pleated green skirt for casual outings.",
      "discount": "12%"
    },
    {
      "name": "Orange Saree",
      "image": "assets/womens/orange.jpg",
      "price": 2299,
      "rating": 4.5,
      "description": "Orange silk saree with contrast blouse.",
      "discount": "20%"
    },
    {
      "name": "Grey Wool Sweater",
      "image": "assets/womens/grey.jpg",
      "price": 1199,
      "rating": 4.4,
      "description": "Warm grey wool sweater for winter wear.",
      "discount": "18%"
    },
    {
      "name": "Beige Coat",
      "image": "assets/womens/coat.jpg",
      "price": 2799,
      "rating": 4.7,
      "description": "Beige trench coat for formal winter outfits.",
      "discount": "22%"
    },
    {
      "name": "Pink Hoodie",
      "image": "assets/womens/hoodie.jpg",
      "price": 899,
      "rating": 4.3,
      "description": "Cozy pink hoodie with kangaroo pockets.",
      "discount": "8%"
    },
    {
      "name": "Blue Jeans",
      "image": "assets/womens/jeans.jpg",
      "price": 1299,
      "rating": 4.6,
      "description": "Skinny fit blue denim jeans for daily wear.",
      "discount": "10%"
    },
    {
      "name": "Black T-Shirt",
      "image": "assets/womens/black.jpg",
      "price": 499,
      "rating": 4.2,
      "description": "Basic black cotton t-shirt.",
      "discount": "5%"
    },
    {
      "name": "White Blouse",
      "image": "assets/womens/blouse.jpg",
      "price": 799,
      "rating": 4.4,
      "description": "Formal white blouse for office wear.",
      "discount": "12%"
    },
    {
      "name": "Yellow Maxi Dress",
      "image": "assets/womens/yellow.jpg",
      "price": 1599,
      "rating": 4.5,
      "description": "Flowy yellow maxi dress for summer.",
      "discount": "15%"
    },
    {
      "name": "Red Skirt",
      "image": "assets/womens/skirt.jpg",
      "price": 699,
      "rating": 4.1,
      "description": "Short red skirt with side zip.",
      "discount": "10%"
    },
    {
      "name": "Floral Kurta",
      "image": "assets/womens/kurta.jpg",
      "price": 999,
      "rating": 4.3,
      "description": "Printed floral kurta with round neck.",
      "discount": "10%"
    }
  ];

  @override
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
          "Womens Cloth",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: 900,
       // color: Colors.blue,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.80,
              crossAxisCount: 2),
          itemCount: clothes.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Detailingwomens(allproducts: clothes[index]),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 6,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(13),
                              topRight: Radius.circular(13),
                            ),
                            child: Image.asset(
                              clothes[index]["image"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                          child: Text(
                        clothes[index]["name"],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
