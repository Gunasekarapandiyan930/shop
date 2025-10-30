import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Buyingscreen extends StatefulWidget {
  final Map documents;

  const Buyingscreen({
    super.key,
    required this.documents,
  });

  @override
  State<Buyingscreen> createState() => _BuyingscreenState();
}

class _BuyingscreenState extends State<Buyingscreen> {
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
        title: Text(
          widget.documents['title'],
          style: const TextStyle(color: Colors.white),
        ),
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
              child: Stack(children: [
                Positioned.fill(
                  child: Image.network(
                    widget.documents['thumbnail'] ?? "Its not valid",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_outline_outlined)),
                )
              ]),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Text(
                  "Discount:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 123.w,
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
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  const Text(
                    "Color:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  const CircleAvatar(radius: 15, backgroundColor: Colors.red),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(radius: 15, backgroundColor: Colors.black),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(
                      radius: 15, backgroundColor: Colors.yellow),
                  SizedBox(
                    width: 10.w,
                  ),
                  const CircleAvatar(radius: 15, backgroundColor: Colors.blue),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                const Text(
                  "Description:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100.w,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    maxLines: 2,
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
                  SizedBox(
                    width: 150.w,
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
            SizedBox(height: 26.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(10),
                  height: 50.h,
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
                  height: 50.h,
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
