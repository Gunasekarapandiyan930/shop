import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Comicbooks extends StatefulWidget {
  const Comicbooks({super.key});

  @override
  State<Comicbooks> createState() => _ComicbooksState();
}

class _ComicbooksState extends State<Comicbooks> {
  List comics = [
  {
    "name": "Spider-Man: No Way Home",
    "image": "assets/comics/spiderman_nowayhome.jpg",
    "price": 599,
    "description": "Marvel's Spider-Man adventure with action-packed storyline.",
    "rating": 4.8,
    "discount": "12%"
  },
  {
    "name": "Batman: The Dark Knight Returns",
    "image": "assets/comics/batman_darkknight.jpg",
    "price": 699,
    "description": "Classic DC Batman comic with intense crime fighting scenes.",
    "rating": 4.9,
    "discount": "15%"
  },
  {
    "name": "Avengers: Endgame",
    "image": "assets/comics/avengers_endgame.jpg",
    "price": 799,
    "description": "Epic Marvel crossover where heroes unite to save the world.",
    "rating": 4.7,
    "discount": "10%"
  },
  {
    "name": "Iron Man: Extremis",
    "image": "assets/comics/ironman_extremis.jpg",
    "price": 549,
    "description": "Tony Stark faces a deadly new virus in this thrilling saga.",
    "rating": 4.6,
    "discount": "14%"
  },
  {
    "name": "The Flash: Rebirth",
    "image": "assets/comics/flash_rebirth.jpg",
    "price": 499,
    "description": "Barry Allen returns as the Scarlet Speedster.",
    "rating": 4.5,
    "discount": "8%"
  },
  {
    "name": "Wonder Woman: Blood",
    "image": "assets/comics/wonderwoman_blood.jpg",
    "price": 649,
    "description": "Wonder Woman battles mythological monsters to save humanity.",
    "rating": 4.6,
    "discount": "13%"
  },
  {
    "name": "Superman: Red Son",
    "image": "assets/comics/superman_redson.jpg",
    "price": 699,
    "description": "An alternate universe where Superman is raised in the USSR.",
    "rating": 4.8,
    "discount": "15%"
  },
  {
    "name": "Deadpool: Merc with a Mouth",
    "image": "assets/comics/deadpool_merc.jpg",
    "price": 599,
    "description": "Deadpool’s hilarious and chaotic adventures.",
    "rating": 4.7,
    "discount": "10%"
  },
  {
    "name": "Guardians of the Galaxy",
    "image": "assets/comics/guardians_galaxy.jpg",
    "price": 749,
    "description": "A team of intergalactic misfits on a cosmic mission.",
    "rating": 4.5,
    "discount": "12%"
  },
  {
    "name": "Black Panther: A Nation Under Our Feet",
    "image": "assets/comics/blackpanther_nation.jpg",
    "price": 699,
    "description": "T'Challa fights to protect Wakanda from political threats.",
    "rating": 4.6,
    "discount": "14%"
  },
  {
    "name": "X-Men: Days of Future Past",
    "image": "assets/comics/xmen_futurepast.jpg",
    "price": 799,
    "description": "Mutants battle to change a dystopian future.",
    "rating": 4.8,
    "discount": "15%"
  },
  {
    "name": "Captain America: Winter Soldier",
    "image": "assets/comics/captain_winter.jpg",
    "price": 599,
    "description": "Cap faces a mysterious assassin from his past.",
    "rating": 4.7,
    "discount": "10%"
  },
  {
    "name": "Doctor Strange: The Oath",
    "image": "assets/comics/doctor_strange_oath.jpg",
    "price": 649,
    "description": "Doctor Strange uncovers a medical conspiracy.",
    "rating": 4.5,
    "discount": "9%"
  },
  {
    "name": "Thor: God of Thunder",
    "image": "assets/comics/thor_godofthunder.jpg",
    "price": 699,
    "description": "Thor faces the God Butcher across time.",
    "rating": 4.7,
    "discount": "12%"
  },
  {
    "name": "Hulk: Planet Hulk",
    "image": "assets/comics/planet_hulk.jpg",
    "price": 749,
    "description": "Hulk becomes a gladiator on an alien planet.",
    "rating": 4.8,
    "discount": "14%"
  }
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
          "Comic Books",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
        itemCount: comics.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: InkWell(onTap: () {
                 context.pushNamed('details',extra: comics[index]);
  
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
                          child: Image.asset(
                           comics[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      
              
                      Center(
                          child: Text(maxLines: 1,
                        comics[index]['name'],
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