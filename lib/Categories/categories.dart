import 'package:apkrestart/Categories/automobile.dart';
import 'package:apkrestart/Categories/beauty.dart';
import 'package:apkrestart/Categories/cellphones.dart';
import 'package:apkrestart/Categories/comicbooks.dart';
import 'package:apkrestart/Categories/electronics.dart';
import 'package:apkrestart/Categories/homedecoration.dart';
import 'package:apkrestart/Categories/kidscloth.dart';
import 'package:apkrestart/Categories/menscloth.dart';
import 'package:apkrestart/Categories/sports.dart';
import 'package:apkrestart/Categories/toys.dart';
import 'package:apkrestart/Categories/womenscloth.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map> Fashion = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbZGFc2vtyBIKz2YeWB5SUbvbIu05k3ZiwVQ&s",
      "Text": "Men's Clothes",
    },
    {
      "image":
          "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fHww",
      "Text": "Women's clothes"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8FgyQo4VrRFdmEdLC8-JyCYtYml_7ydLYBA&s",
      "Text": "Kid's Clothes"
    },
    {
      "image":
          "https://framerusercontent.com/images/6h8ylboHMmZkqg91oeCpZaJ6GM.png",
      "Text": "Automobiles"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVQ2d3VC-fMJ68CDx-BhJPx0RlD2f3xdr_0w&s",
      "Text": "Sports"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIbZWigoQDlDmgq997uti_T__CSNoERkbs4w&s",
      "Text": "Home Decoration"
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/81qylasbmiL._UF1000,1000_QL80_.jpg",
      "Text": "Beauty Products"
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/81lroDEpXkL._UF1000,1000_QL80_.jpg",
      "Text": "Toys"
    },
    {
      "image":
          "https://images.samsung.com/is/image/samsung/assets/in/explore/brand/5-best-android-mobile-phones-2022-in-india/banner-mobile-720x761-080422.jpg?720_N_JPG",
      "Text": "Cellphones"
    },
    {
      "image":
          "https://t4.ftcdn.net/jpg/03/64/41/07/360_F_364410756_Ev3WoDfNyxO9c9n4tYIsU5YBQWAP3UF8.jpg",
      "Text": "Electronics Items"
    },
    {
      "image":
          "https://d16kd6gzalkogb.cloudfront.net/magazine_images/Comic-Books.jpg",
      "Text": "Comic Books"
    },
    {
      "image":
          "https://media.istockphoto.com/id/531786318/photo/top-view-of-female-fashion-accessories.jpg?s=612x612&w=0&k=20&c=kA9wOhgfDQiz7RO6GoEztqlPNGaTxZyFwf14991aMM0=",
      "Text": "Accessories"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 182, 22, 210),
      appBar: AppBar(
        backgroundColor: Colors.red,
      
        title: const Text(
          "Categories",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.75,
                crossAxisCount: 2),
            itemCount: Fashion.length,
            itemBuilder: (context, index) => 
            Card(
                shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
              elevation: 6,
              
              child: InkWell(
                onTap: () {
                  if(Fashion[index]["Text"] =="Men's Clothes" ){

 Navigator.push(context, MaterialPageRoute(builder: (context) =>const Menscloth(),));

                }else if(Fashion[index]["Text"]== "Women's clothes"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Womenscloth(),));
                }else if(Fashion[index]["Text"]=="Kid's Clothes"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Kidscloth(),));
                }else if(Fashion[index]["Text"]=="Automobiles"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Automobile(),));
                }else if(Fashion[index]["Text"]=="Sports"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Sports(),));
                }else if(Fashion[index]["Text"]=="Home Decoration"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Homedecoration(),));
                }else if(Fashion[index]["Text"]=="Beauty Products"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Beauty(),));
                }else if(Fashion[index]["Text"]=="Toys"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Toys(),));
                }else if(Fashion[index]["Text"]=="Cellphones"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Cellphones(),));
                }else if(Fashion[index]["Text"]=="Electronics Items"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Electronics(),));
                }else if(Fashion[index]["Text"]=="Comic Books"){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Comicbooks(),));
                }
                  },
                 
                child: SizedBox(
               
                  height: 55,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 185,
                          width: double.infinity,
                          // width: 160,
                          child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                            child: Image.network(
                              Fashion[index]["image"]!,
                              fit: BoxFit.fill,
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        Fashion[index]["Text"]!,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
