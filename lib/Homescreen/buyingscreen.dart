

import 'package:flutter/material.dart';

class Buyingscreen extends StatefulWidget {
 final Map documents ;
  const Buyingscreen({super.key, required this.documents,});

  @override
  State<Buyingscreen> createState() => _BuyingscreenState();
}

class _BuyingscreenState extends State<Buyingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        leading: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
                title: Text(widget.documents['title'],style: const TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const SizedBox(height: 12),
            SizedBox(
              height: 400,
              width: double.infinity,
             // color: Colors.greenAccent,
              child: 
              Stack(
                children:[
                  Positioned.fill(child:   Image.network(widget.documents['thumbnail']??
                                            "Its not valid",
                fit: BoxFit.cover,), ),
                Positioned(top: 10,right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_outlined)), )
                 
                
                 
                ]
              ),
            ),
            const SizedBox(height: 12),
             Row(
              children: [
                const Text(
                  "Discount:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 123,
                ),
                Text(widget.documents["discountPercentage"].toString()),
              /*  CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple,
                  child: FittedBox(

                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple,
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "XL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple,
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "XXL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.purple,
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "XXXL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),*/
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: Row(
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
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Description:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(width: 100,
                  child: Text(maxLines: 2,
                   widget.documents['title'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  const Text(
                    "Price:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Text(
                    widget.documents['price'].toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 26),
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
    );
  }
}
