import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product_model.dart';
import '../shared/components.dart';

class MyProductsScreen extends StatelessWidget {
  const MyProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
          style: GoogleFonts.righteous(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/icons/menu.png')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.green,
                    size: 33,
                  )))
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          buildTitle(title: 'Trending Watches', icon: Icons.watch_later_outlined),
          buildExpanded(),
          buildTitle(title: 'Rolex', icon: Icons.watch),
          buildExpanded(),
        ],
      ),
    );
  }

  Padding buildTitle({required String title, required IconData icon}) {
    return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                title,
                style: GoogleFonts.mavenPro(
                    fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(
                icon,
                color: Colors.green,
                size: 27,
              )
            ],
          ),
        );
  }
}
