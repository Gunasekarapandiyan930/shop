import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  List ListTiles = [
    {"Icon": Icons.mobile_friendly_rounded, "Text": "Bank & UPI Details"},
    {"Icon": Icons.payment, "Text": "Payment & Refund"},
    {"Icon": Icons.language, "Text": "Change Language"},
    {"Icon": Icons.diamond, "Text": "Wished Products"},
    {"Icon": Icons.share, "Text": "Shared Products"},
    {"Icon": Icons.balance, "Text": "Wallet Amount"},
    {"Icon": Icons.star, "Text": "Rate This App"},
   
    {"Icon": Icons.leaderboard, "Text": "Policies"},
    {"Icon": Icons.logout, "Text": "Logout"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),),
          actions: const [Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.settings),
          )],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Image.network(
                    "https://static.vecteezy.com/system/resources/thumbnails/025/003/253/small_2x/cute-cartoon-girl-student-character-on-transparent-background-generative-ai-png.png"),
              ),
              title: const Text("Monica",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              subtitle:
                  const Text("Ganthipuram, Coimbathore", style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 100,
                  child: Column(
                    children: [
                      Text("Refer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("15",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  height: 80,
                  width: 100,
                  child: Column(
                    children: [
                      Text("Earn",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("1502",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.update,
                  size: 30,
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.edit,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.green[400],
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Orders",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text("15",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18))
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue[400],
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.green[400],
                    child: const Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Return",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                        Center(
                          child: Text("5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.orange[400],
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.green[400],
                    child: const Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Delivered",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ),
                        Center(
                          child: Text("10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ListTiles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(ListTiles[index]["Icon"]),
                    title: Text(ListTiles[index]["Text"],style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),),
                    trailing: const Icon(Icons.arrow_forward),
                  );
                },
              ),
            )
          ],
        ));
  }
}
