import 'package:apkrestart/Repo/todaysapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Todaysdeal extends StatefulWidget {
  const Todaysdeal({super.key});

  @override
  State<Todaysdeal> createState() => _TodaysdealState();
}

class _TodaysdealState extends State<Todaysdeal> {
  List apidesign = [];
  @override
  void initState() {
    mouse();
    super.initState();
  }

  mouse() async {
    var res = await Reposity().getuser();
    setState(() {
      apidesign = res["storedata"]["products"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
      context.pop();
            },
            icon: const Icon(Icons.arrow_back,color: Colors.white,)),
        title: const Text(
          "Todays Deal",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                    crossAxisCount: 2),
                itemCount: apidesign.length,
                itemBuilder: (context, index) =>
                 Card(
                  elevation: 8,
                   child: Container(
                   // height: 1200.h,
                    margin: const EdgeInsets.all(10),
                   // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       
                         Image.network(
                            apidesign[index]["images"][0],
                           
                            width: double.infinity,
                            fit: BoxFit.contain,
                            // fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10.h),
                        
                        Text(
                          apidesign[index]["title"].toString(),
                          style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          apidesign[index]["price"].toString(),
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                                   ),
                 ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
