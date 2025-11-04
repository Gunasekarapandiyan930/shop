import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Buyingscreen extends StatefulWidget {
  final Map documents;

    Buyingscreen({
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
            icon:   Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          widget.documents['title'],
          style:   TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding:   EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SizedBox(height: 12),
            SizedBox(
              height: 400.h,
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
                      icon:   Icon(Icons.favorite_outline_outlined)),
                )
              ]),
            ),
              SizedBox(height: 12),
            Row(
              children: [
                  Text(
                  "Discount:",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 123.w,
                ),
                Text(widget.documents["discountPercentage"].toString()),
                /*  CircleAvatar(
                  radius: 15.r,
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
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 15.r,
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
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 15.r,
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
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 15.r,
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
              SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                    Text(
                    "Color:",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                   CircleAvatar(radius: 15.r, backgroundColor: Colors.red),
                  SizedBox(
                    width: 10.w,
                  ),
                   CircleAvatar(radius: 15.r, backgroundColor: Colors.black),
                  SizedBox(
                    width: 10.w,
                  ),
                   CircleAvatar(
                      radius: 15.r, backgroundColor: Colors.yellow),
                  SizedBox(
                    width: 10.w,
                  ),
                   CircleAvatar(radius: 15.r, backgroundColor: Colors.blue),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                  Text(
                  "Description:",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100.w,
                ),
                SizedBox(
                  width: 100.w,
                  child: Text(
                    maxLines: 2,
                    widget.documents['title'],
                    style:   TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                )
              ],
            ),
              SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                    Text(
                    "Price:",
                    style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150.w,
                  ),
                  Text(
                    widget.documents['price'].toString(),
                    style:   TextStyle(
                      fontSize: 16.sp,
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
                  
margin: EdgeInsets.all(10.r),
                  height: 50.h,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:   Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  
margin: EdgeInsets.all(10.r),
                  height: 50.h,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:   Text(
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
