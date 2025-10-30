import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> curosilepic = [
    Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLw4CtweOzt9eLOmMde7trB82b1N1i6E5QnQ&s",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTskj6I23weoOB3qE1NjTnSOPsVEqDifeOT6s21m_e6cQr29eQL01ZUfYQDMEkM9-gRa-g&usqp=CAU",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREdLQ1h0fttIKILww52BfApv1xVpYSG32SfA&s",
      fit: BoxFit.cover,
    )
  ];
  List products = [
    {
      "name": "Men's Fashion",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkz9LkYqIsUvqnhEisFQlsKSBVz_s7sIMTeqjDiO-mzfRNbmv-d7U2eJok0mR0ADSryQI&usqp=CAU"
    },
    {
      "name": "Traditional Wear",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPLSwq7-8vsXoL4DOT8Eke0aefrRzqdGlrjdRkntS0UWwlzhCJnt16AB4CpoYznmWFFLo&usqp=CAU"
    },
    {
      "name": "Women's Fashion",
      "image":
          "https://images.unsplash.com/photo-1483985988355-763728e1935b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "kids's Fashion",
      "image":
          "https://img.pikbest.com/origin/06/30/33/663pIkbEsTfY9.jpg!w700wp"
    },
    {
      "name": "Kitchen's Products",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0tHSb3GIHPs_3Eq0ZJMlwEmypoUt5ZMSGx-nYTuNaTnOLv7HPVRkXi9_F-NwBJSJPwpk&usqp=CAU"
    },
    {
      "name": "Home Furnitures",
      "image":
          "https://www.shutterstock.com/image-photo/interior-living-room-green-houseplants-260nw-2290526749.jpg"
    },
  ];

  List builder = [
    "https://cdn.create.vista.com/downloads/f71e849c-b5cf-41ca-942b-db3d4f6d4bf9_1024.jpeg",
    "https://cdn.create.vista.com/downloads/679701ae-8df6-413a-85cb-483329cd4132_1024.jpeg",
     "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/kids-toys-design-template-9099417ca39510d628e0315998efe4d0_screen.jpg?ts=1709208032",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/phone-collection-sale-design-template-9572ce5b3f85a0af70e508ecfaab8869_screen.jpg?ts=1686909741",
    
  ];
  final List<Map<String, String>> grid = [
      {
      "name": "Home Appliances",
      "image":
          "https://www.shutterstock.com/image-photo/interior-living-room-green-houseplants-260nw-2290526749.jpg"
    },
     {
      "name": "Books",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLhhuXDxCOgl5j3wOaHP9nyP19xtjKFMzvgA&s"
    },
    {
      "name": "Men's Fashion",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkz9LkYqIsUvqnhEisFQlsKSBVz_s7sIMTeqjDiO-mzfRNbmv-d7U2eJok0mR0ADSryQI&usqp=CAU"
    },
    
    {
      "name": "Women's Fashion",
      "image":
          "https://images.unsplash.com/photo-1483985988355-763728e1935b?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "kids's Fashion",
      "image":
          "https://img.pikbest.com/origin/06/30/33/663pIkbEsTfY9.jpg!w700wp"
    },
    {
      "name": "Kitchen's Products",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0tHSb3GIHPs_3Eq0ZJMlwEmypoUt5ZMSGx-nYTuNaTnOLv7HPVRkXi9_F-NwBJSJPwpk&usqp=CAU"
    },
  
  ];
  List productlist = [];
  final url = 'https://dummyjson.com/carts';
  
  
  getcarts() async {
    try {
      var res = await Dio().get(url);
      if (res.statusCode == 200) {
        setState(() {
          productlist = (res.data["carts"] as List)
              .expand((cart) => cart["products"] as List)
              .toList();

          print("set:$productlist");
        });
        print("yes:$res.statusCode");
      }
    } catch (e) {
      print('error:$e');
    }
  }

  @override
  void initState() {
    super.initState();
    getcarts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white54,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: InkWell(
                      onTap: () {
                          context.pushNamed('search');
                       
                      },
                      child: Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(65),
                          color: Colors.grey[300],
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          readOnly: true,
                          onTap: () {
                             context.pushNamed('search');
                          },
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search here",
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                              fillColor: Colors.grey,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 15),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(height: 10.h),
                  SizedBox(
                      height: 200.h,
                      child: CarouselSlider(
                          items: curosilepic,
                          options: CarouselOptions(
                            autoPlay: true,
                          ))), // carosile
                 SizedBox(height: 10.h),
                  SizedBox(
                    height: 50.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {
                              context.pushNamed('todays');
                          },
                          child: Center(
                            child: category(
                                color: Colors.red,
                                text: "Today's deal",
                                icon: const Icon(Icons.library_add)),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed('flash');
                        },
                          child: category(
                              color: Colors.lightBlue,
                              text: "Flash Deal",
                              icon: const Icon(Icons.storm)),
                        ),
                        InkWell(
                          onTap: () {
                           context.pushNamed('brands');
                        },
                          child: category(
                              color: Colors.grey,
                              text: "Brands",
                              icon: const Icon(Icons.branding_watermark_rounded)),
                        ),
                        InkWell(onTap: () {
                            context.pushNamed('top');
                        },
                          child: category(
                              color: Colors.green,
                              text: "Top Sellers",
                              icon: const Icon(Icons.shop)),
                        ),
                      
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200.h,
                    child: ListView.builder(
                      itemCount: builder.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (builder[index]==
                              "https://cdn.create.vista.com/downloads/f71e849c-b5cf-41ca-942b-db3d4f6d4bf9_1024.jpeg") {
                      context.pushNamed('beauty');
                          }
                          else   if (builder[index]== "https://cdn.create.vista.com/downloads/679701ae-8df6-413a-85cb-483329cd4132_1024.jpeg"
                            ) {
                             context.pushNamed('electronic');
                          } else   if (builder[index]== "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/kids-toys-design-template-9099417ca39510d628e0315998efe4d0_screen.jpg?ts=1709208032"
                            ) {
                             context.pushNamed('toys');
                          } else   if (builder[index]==  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/phone-collection-sale-design-template-9572ce5b3f85a0af70e508ecfaab8869_screen.jpg?ts=1686909741"
                            ) {
                          context.pushNamed('cell');
                          }
                        },
                        child: Container(
                          height: 150.h,
                          width: 150.w,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              builder[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              SizedBox(height: 10.h),
                  Row(
                   
                    children: [
                      const Text(
                        "Featured Categories :",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(onTap: () {
                          context.push('/seeall');
                      
                        },
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 220.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Card(
                              elevation: 4,
                              margin: const EdgeInsets.all(10),
                              child: Container(
                                height: 150.h,
                                width: 150.w,
                                margin: const EdgeInsets.all(10),
                                child: Image.network(
                                  products[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              products[index]["name"],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Products :",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 10.h),
                  Container(
                    color: Colors.white,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.7,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: productlist.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Product Image
                              InkWell(
                                onTap: () {
                                  context.pushNamed('/buying',extra: productlist[index]);
                               
                                },
                                child: Container(
                                  height: 200.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        productlist[index]["thumbnail"] ??
                                            "Its not valid",
                                      ),
                                      // product["thumbnail"]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              // Title
                              Text(maxLines: 1,
                                productlist[index]["title"] ?? "No Title",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
              
                            SizedBox(height: 5.h),
                              // Price
                              Text(
                                productlist[index]["price"].toString(),
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Container category({Icon? icon, String? text, Color? color}) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 60.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Text(maxLines: 1,
            text!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
