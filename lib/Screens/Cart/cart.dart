import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Cart extends StatefulWidget {
    Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int mycart = 0;
  int cart = 00;

  List grid = [
    {'icon': Icons.person, 'label': 'My'},
    {'icon': Icons.group, 'label': 'Club'},
    {'icon': Icons.message, 'label': 'Message'},
    {'icon': Icons.list, 'label': 'Orders'},
    {'icon': Icons.notifications, 'label': 'Notificat'},
    {'icon': Icons.download, 'label': 'Downloe'},
    {'icon': Icons.favorite_border, 'label': 'My'},
    {'icon': Icons.money, 'label': 'Refund'},
    {'icon': Icons.upload, 'label': 'Upload'},
  ];
  List view = [
    {'icon': Icons.nat, 'name': 'Top selling Products'},
    {'icon': Icons.safety_check, 'name': 'Wholesale'},
    {'icon': Icons.security, 'name': 'All digit Products'},
    {'icon': Icons.gif_box_outlined, 'name': 'Coupons'},
    {'icon': Icons.history, 'name': 'Browse all sellers'},
    {'icon': Icons.trending_down, 'name': 'Top selling Products'},
    {'icon': Icons.search, 'name': 'Auction'},
    {'icon': Icons.local_activity, 'name': 'Blog List'},
  ];
  @override
  void initState() {
    getcart();
    uidcart();
   
    super.initState();
     Getuser();
  }

  var details;
  Getuser() async {
    var res = FirebaseAuth.instance.currentUser!.uid;
    print("uids:$res");
    var usersinfo =
        await FirebaseFirestore.instance.collection("User").doc(res).get();
    setState(() {
      details = usersinfo.data();
      print("data:${details["firstname"]}");
    });
  }

  getcart() async {
    var res = await FirebaseFirestore.instance
        .collection("product")
        .doc("shampoo")
        .get();
    print("variable:${res.data()!.length}");
    setState(() {
      mycart = res.data()!.length;
    });
  }

  uidcart() async {
    var res =
        await FirebaseFirestore.instance.collection("product").doc("uid").get();
    setState(() {
      cart = res.data()!.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color.fromARGB(255, 182, 22, 210),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:   EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                       InkWell(
                        child:  CircleAvatar(radius: 30.r, child: Icon(Icons.person)),
                        onTap: () {
                          context.pushNamed('profile');
                          
                        },
                        ),
                      Positioned(
                        bottom: 0,
                        left: 18,
                        right: 0,
                        child: CircleAvatar(
                          radius: 12.r,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            child:   Icon(Icons.edit,
                                size: 16, color: Colors.purple),
                            onTap: () {
                              context.pushNamed('edit');
                             
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  //SizedBox(20),
                    Text(
                    "Login/Registration",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(
                    width: 100.w,
                  ),
                    Icon(Icons.exit_to_app),
                ],
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$cart",
                        style:   TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold),
                      ),
                        Text(
                        "in your cart",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$mycart",
                        style:   TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold),
                      ),
                        Text(
                        "in your Wishlist",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child:   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "in your Orders",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              
margin: EdgeInsets.all(20.r),
              height: 300.h,
              color: Colors.white,
              width: 500.w,
              child: GridView.builder(
                gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: grid.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(grid[index]['icon']),
                      Text(grid[index]['label'])
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  view[index]['icon'],
                  color: Colors.white,
                ),
                title: Text(
                  view[index]['name'],
                  style:   TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
