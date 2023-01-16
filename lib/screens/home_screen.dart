import 'package:flutter/material.dart';
import '../models/home_screen_models.dart';
import '../shared/components/components.dart';

class MyHomeScreen extends StatelessWidget {

  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: const Color.fromARGB(251, 1, 2, 4),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none, size: 35),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  size: 35,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.account_circle_outlined, size: 35)
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              childAspectRatio: 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
          ),
          itemCount: homePage.length,
          itemBuilder: (context, index) {
            return buildContainer(homePage[index]);
          },
        ),
      ),
    );
  }
}