
import 'package:flutter/material.dart';

class Detailingwomens extends StatefulWidget {
  final Map allproducts;
  const Detailingwomens({super.key, required this.allproducts});

  @override
  State<Detailingwomens> createState() => _DetailingwomensState();
}

class _DetailingwomensState extends State<Detailingwomens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFFfef5f1),
     appBar: AppBar(backgroundColor: Colors.red,
        leading: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                title: Text(widget.allproducts['name'],style: const TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox( height: 500,width: double.infinity,
              child: Stack(
                children: [
                  Positioned(top: 20,right: 20,
                    child: IconButton(onPressed: () {Navigator.pop(context);
                    
                  }, icon: const Icon(Icons.favorite))),
                  Positioned.fill(child: Image.asset(fit: BoxFit.cover,
                    widget.allproducts["image"]?? "nodata found"
                  ))
                ],
              ),
            ),
            Expanded(
              child: Container(
              padding: const EdgeInsets.all(20),
                color: Colors.white,
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Price",style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),), 
                        // SizedBox(width: 150,),
                        Text("\$${widget.allproducts["price"]}",
                          
                        style: const TextStyle( fontSize: 18,color: Colors.orange,
                        fontWeight: FontWeight.bold),)
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Ratings",style: TextStyle( fontSize: 18,fontWeight: FontWeight.bold),), 
                        // SizedBox(width: 150,),
                        Text(widget.allproducts["rating"].toString(),style: const TextStyle( fontSize: 18,
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const Row(
  children: [
    Text(
      "Color:",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(width: 10),
    Expanded(   
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 15, backgroundColor: Colors.red),
          SizedBox(width: 10),
          CircleAvatar(radius: 15, backgroundColor: Colors.black),
          SizedBox(width: 10),
          CircleAvatar(radius: 15, backgroundColor: Colors.yellow),
          SizedBox(width: 10),
          CircleAvatar(radius: 15, backgroundColor: Colors.blue),
        ],
      ),
    ),
  ],
),

                    /* const Row(
                  children: [
                    Text(
                      "Color:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    CircleAvatar(radius: 15, backgroundColor: Colors.red),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(radius: 15, backgroundColor: Colors.black),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(radius: 15, backgroundColor: Colors.yellow),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(radius: 15, backgroundColor: Colors.blue),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),*/
                    const Text("Details",style: TextStyle( fontSize: 18,
                        fontWeight: FontWeight.bold),),
                        Text(widget.allproducts["description"],style: const TextStyle(fontWeight: FontWeight.w500),),
                         //const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
        
        
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}