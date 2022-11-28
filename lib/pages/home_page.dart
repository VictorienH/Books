import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utile/categorie_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //padding constants
  final double horizontalPadding = 40.0;
  final double verticalPadding = 25.0;

  // list of categories
  List myCategorie = [
    // [CategorieName, iconPath]
    ["Biography", "assets/icons/biography.png"],
    ["Cooking", "assets/icons/cooking.png"],
    ["Drama", "assets/icons/drama.png"],
    ["Education", "assets/icons/education.png"],
    ["Fantasy", "assets/icons/fantasy.png"],
    ["Historical", "assets/icons/history.png"],
    ["Horror", "assets/icons/horror.png"],
    ["Humor", "assets/icons/humor.png"],
    ["Litérature", "assets/icons/Literature.png"],
    ["Religious", "assets/icons/religious.png"],
    ["Science-fiction", "assets/icons/science-fiction.png"],
    ["Science", "assets/icons/science.png"],
    ["Sports", "assets/icons/sports.png"],
    ["Thriller", "assets/icons/thriller.png"],
    ["Travel", "assets/icons/travel.png"],
  ];

  // power button switched

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      myCategorie[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // custom app bar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // menu icon
                  Icon(
                    Icons.book,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.bookmark,
                    size: 45,
                    color: Colors.grey[800],
                  )

                  // account icon
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            // welcome home profil
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                  Text(
                    'library',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 72,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            //catégories + grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                'Catégories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Divider(
                color: Colors.grey,
                thickness: 2,
              ),
            ),
            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: myCategorie.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CategorieBox(
                        categorieName: myCategorie[index][0],
                        iconPath: myCategorie[index][1],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
