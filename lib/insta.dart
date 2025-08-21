import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List<Map<String, dynamic>> feeds = [
    {
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg88ihI3iWFNHtEbHGpaBXKo1BXe6YZBWl5A&s',
      'description': 'Enjoying the beach vibes! 🌊☀️',
      'isLiked': false,
      'likes': 10,
      'comments': 2,
    },
    {
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1vliyb08eZBI23n__sshW6z1QWr_FAAbO88pBaTpv5Gz6tjey3oowllA7ic0hqiQeEdQ&usqp=CAU',
      'description': 'Mountain hiking adventures 🏞️',
      'isLiked': false,
      'likes': 5,
      'comments': 1,
    },
    {
      'imageUrl': 'https://www.elahe.in/cdn/shop/files/171_70fd1f10-5806-4b45-bc08-6bb131c736ab_2048x.jpg?v=1707910267',
      'description': 'Café mornings with friends ☕',
      'isLiked': false,
      'likes': 22,
      'comments': 3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("instagram",style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.refresh),
        )],
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        child: Column(
          
          children: [
             const SizedBox(height:12),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
              ),
              title: Text("Pooja"),
              trailing: Icon(Icons.more_horiz),
            ),
             const SizedBox(height: 12),
          ListView.builder(
            itemCount: feeds.length,shrinkWrap: true,
            itemBuilder: (context, index) {
            return  Column(
                children:[
                   Container(
                  height: 500,width: double.infinity,
                  color: Colors.grey,
                  child: Image.network(fit: BoxFit.cover,feeds[index]['imageUrl'], ),
                  
                ),
                 Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                
                children: [
                  InkWell(onTap: () {
                    setState(() {
                      feeds[index]['isLiked'] = !feeds[index]['isLiked'];
                      feeds[index]['likes'] += feeds[index]['isLiked']?1:-1;
                    });
                  },
                    child: Icon( color: feeds[index]['isLiked'] == true? Colors.red : Colors.green,
                    
                      feeds[index]['isLiked'] ==  true ? Icons.favorite:
                      Icons.favorite_outline),
                  ),Text(feeds[index]['likes'].toString()),
                  const SizedBox(width: 12),
                  const Icon(Icons.chat),Text(feeds[index]['comments'].toString()),
                   const SizedBox(width: 12),
                  const Icon(Icons.share), const SizedBox(width: 12),
                  const SizedBox(width: 200,),
                  const Icon(Icons.save)
                ],
              ),
            )
                ]
              );
          },
            
          ),
           
          ],
        ),
      ),
    );
  }
}