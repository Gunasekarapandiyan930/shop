import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Seeall extends StatefulWidget {
  const Seeall({super.key});

  @override
  State<Seeall> createState() => _SeeallState();
}

class _SeeallState extends State<Seeall> {
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
      "name": "Kitchen's Products",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0tHSb3GIHPs_3Eq0ZJMlwEmypoUt5ZMSGx-nYTuNaTnOLv7HPVRkXi9_F-NwBJSJPwpk&usqp=CAU"
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
  ];
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
          "Featured Categories",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: grid.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(
              onTap: () {
                context.pushNamed('buying', extra: grid[index]);
      
              },
              child: InkWell(
                onTap: () {
                  if (grid[index]["name"] == "Men's Fashion") {
                    context.pushNamed('mens');
                  } else if (grid[index]["name"] == "Women's Fashion") {
                   context.pushNamed('womens');
                  } else if (grid[index]["name"] == "kids's Fashion") {
                    context.pushNamed('kids');
                  } else if (grid[index]["name"] == "Kitchen's Products") {
                   
                     context.pushNamed('electronic');
                  } else if (grid[index]["name"] == "Home Appliances") {
                   context.pushNamed('homedecor');
                  } else if (grid[index]["name"] == "Books") {
                    context.pushNamed('comic');
                  }
                },
                child: Card(
                  elevation: 6,
                  child: Container(
                    height: 150.h,
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
                            height: 220.h,
                            width: double.infinity,
                            child: Image.network(
                              grid[index]['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                            child: Text(
                          maxLines: 1,
                          grid[index]['name']!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
