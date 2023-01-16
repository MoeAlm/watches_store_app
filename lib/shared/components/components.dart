import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchs_store_app/models/product_model.dart';
import '../../models/home_screen_models.dart';


Widget buildContainer(HomeScreenModel model) {
  return InkWell(
    onTap: model.onTap,
    child: Stack(children: [
      Container(
        height: 200,
        width: 500,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image:
              DecorationImage(image: AssetImage(model.img), fit: BoxFit.cover),
        ),
      ),
      Container(
        height: 200,
        width: 500,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [Colors.black.withOpacity(0.7), Colors.transparent],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                model.title,
                style: GoogleFonts.abel(
                    color: Colors.white.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ]),
  );
}

Widget buildTitle({required String title, required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        Text(
          title,
          style:
          GoogleFonts.mavenPro(fontSize: 23, fontWeight: FontWeight.bold),
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