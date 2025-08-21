import 'package:apkrestart/Categories/detailingwomens.dart';
import 'package:flutter/material.dart';

class Menscloth extends StatefulWidget {
  const Menscloth({super.key});

  @override
  State<Menscloth> createState() => _MensclothState();
}

class _MensclothState extends State<Menscloth> {
  List<Map<String, dynamic>> design = [
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY3GfQEtHIoZk3wqOspOCsbNXE_r4w07mcpg&s',
    'name': 'Black Jacket',
    'description': 'Warm and stylish black jacket for kids',
    'price': 999,
    'ratings': 4.5,
    'discount': '20%'
  },
  {
    'image':
        'https://ramrajcotton.in/cdn/shop/files/241019_Ramraj_e-com11316_f42d1fd2-fd6f-4266-92f6-9d82b9af9a95.jpg?v=1738065339&width=1080',
    'name': 'White Dhotie',
    'description': 'Traditional cotton dhoti for kids',
    'price': 499,
    'ratings': 4.3,
    'discount': '15%'
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmLP9i8bRRaeynrBcXFyXxjmYbBAhf6KNZOgrB0sGrl33cKwpoePmE5yR8jwsa9g1DOc&usqp=CAU',
    'name': 'Blue Jeans',
    'description': 'Comfortable and durable denim jeans',
    'price': 799,
    'ratings': 4.7,
    'discount': '10%'
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGPOVBUwIfl7jyVjBw5_4ImhR_zc4ZqE0bqHA4nA1dWTiMNjbtSZ0o50q01DCi9jZjurk&usqp=CAU',
    'name': 'Trendy Kurtie',
    'description': 'Colorful kurti perfect for festive wear',
    'price': 699,
    'ratings': 4.4,
    'discount': '25%'
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNMTGC4Gn8HicF3dVTzczcBOcySRIUfv5hIA&s',
    'name': 'TrackPant',
    'description': 'Soft cotton trackpant for daily wear',
    'price': 549,
    'ratings': 4.6,
    'discount': '18%'
  },
  {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPA1bVW4WBFaSz35GOsdeZhh9bfZmZVUkXsuOoUi8c77A7aey1eyeJDyAL0CF10GylEq0&usqp=CAU',
    'name': 'Trendy Wear',
    'description': 'Fashionable kids wear for all occasions',
    'price': 899,
    'ratings': 4.2,
    'discount': '30%'
  },
  {
    'image':
        'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/15557590/2022/2/18/a88d594a-0184-4042-baad-01c2d7874cec1645166286136-Roadster-Men-Shirts-4091645166285596-1.jpg',
    'name': 'Casual Shirt',
    'description': 'Lightweight casual shirt for comfort',
    'price': 650,
    'ratings': 4.5,
    'discount': '12%'
  },
  {
    'image': 'https://m.media-amazon.com/images/I/81jfggAT40L._UY1100_.jpg',
    'name': 'Printed T-shirt',
    'description': 'Cool printed t-shirt with fun design',
    'price': 499,
    'ratings': 4.6,
    'discount': '20%'
  },
  {
    'image':
        'https://cdn18.nnnow.com/web-images/large/styles/CZ16X76M54I/1666342523136/1.jpg',
    'name': 'Trouser',
    'description': 'Formal trousers for school events',
    'price': 750,
    'ratings': 4.3,
    'discount': '15%'
  },
  {
    'image': 'https://images.indianexpress.com/2023/06/varun-dhawan-2.jpg',
    'name': 'Shorts',
    'description': 'Comfortable cotton shorts for summer',
    'price': 399,
    'ratings': 4.4,
    'discount': '10%'
  },
];

  // List design = [
  //   {
  //     'Image':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY3GfQEtHIoZk3wqOspOCsbNXE_r4w07mcpg&s',
  //     'Text': 'Black Jacket'
  //   },
  //   {
  //     'Image':
  //         'https://ramrajcotton.in/cdn/shop/files/241019_Ramraj_e-com11316_f42d1fd2-fd6f-4266-92f6-9d82b9af9a95.jpg?v=1738065339&width=1080',
  //     'Text': 'White Dhotie'
  //   },
  //   {
  //     'Image':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTmLP9i8bRRaeynrBcXFyXxjmYbBAhf6KNZOgrB0sGrl33cKwpoePmE5yR8jwsa9g1DOc&usqp=CAU',
  //     'Text': 'Blue Jeans'
  //   },
  //   {
  //     'Image':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGPOVBUwIfl7jyVjBw5_4ImhR_zc4ZqE0bqHA4nA1dWTiMNjbtSZ0o50q01DCi9jZjurk&usqp=CAU',
  //     'Text': 'Trendy Kurtie'
  //   },
  //   {
  //     'Image':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNMTGC4Gn8HicF3dVTzczcBOcySRIUfv5hIA&s',
  //     'Text': 'TrackPant'
  //   },
  //   {
  //     'Image':
  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPA1bVW4WBFaSz35GOsdeZhh9bfZmZVUkXsuOoUi8c77A7aey1eyeJDyAL0CF10GylEq0&usqp=CAU',
  //     'Text': 'Trendy Wear'
  //   },
  //   {
  //     'Image':
  //         'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/15557590/2022/2/18/a88d594a-0184-4042-baad-01c2d7874cec1645166286136-Roadster-Men-Shirts-4091645166285596-1.jpg',
  //     'Text': 'Casual Shirt'
  //   },
  //   {
  //     'Image': 'https://m.media-amazon.com/images/I/81jfggAT40L._UY1100_.jpg',
  //     'Text': 'Printed T-shirt'
  //   },
  //   {
  //     'Image':
  //         'https://cdn18.nnnow.com/web-images/large/styles/CZ16X76M54I/1666342523136/1.jpg',
  //     'Text': 'Trouser'
  //   },
  //   {
  //     'Image': 'https://images.indianexpress.com/2023/06/varun-dhawan-2.jpg',
  //     'Text': 'Shorts'
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Mens Cloth",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: design.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
               Detailingwomens(allproducts: design[index]),));
            },
              child: Card(
                elevation: 6,
                child: Container(
                  height: 150,
                  width: 150,
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
                          height: 220,
                          width: double.infinity,
                          child: Image.network(
                            design[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // SizedBox(height: 10),
              
                      Center(
                          child: Text(
                        design[index]['name'],
                        style:
                            const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ))
                    ],
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
