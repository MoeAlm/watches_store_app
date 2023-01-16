import 'package:flutter/material.dart';

import '../../models/product_model.dart';

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
                  Text(model.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  Text(model.price, style: const TextStyle(fontSize: 20, color: Colors.green))
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget buildGridView() {
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
