import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchs_store_app/models/product_model.dart';
import '../models/home_screen_models.dart';

Widget buildButton(
    {required Color bgColor,
    required Color fgColor,
    required String img,
    required String text,
    required Function() onPressed}) {
  return SizedBox(
    width: 310,
    child: ElevatedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Row(
        children: [
          Image.asset(
            '$img',
            width: 28,
            height: 28,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}

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

Widget buildItems(ProductsModel model){
  return InkWell(
    onTap: model.onTap,
    child: Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Image.asset(model.img, width: 100, height: 100,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children:  [
                  Text(model.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  Text(model.price, style: TextStyle(fontSize: 20, color: Colors.green))
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
Widget buildExpanded() {
  return Expanded(
    child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500,
            childAspectRatio: 1.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return buildItems(products[index]);
        }),
  );
}
