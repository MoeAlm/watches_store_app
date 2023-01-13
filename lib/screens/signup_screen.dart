import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../shared/components.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 1, 2, 4),
      body: Stack(
        children: [
          Image.asset(
            'assets/background/bg.jpg',
            fit: BoxFit.fitHeight,
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: BlurryContainer(
                      color: Colors.white.withOpacity(0.015),
                      blur: 15,
                      height: 350,
                      width: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Welcome',
                            style: GoogleFonts.pacifico(
                                fontSize: 40, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 140,
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return MyHomeScreen();
                                    }));
                                  },
                                  style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      side:
                                          const BorderSide(color: Colors.white),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  child: const Text('Login', style: TextStyle(fontSize: 20)),
                                ),
                              ),
                              SizedBox(
                                width: 140,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  child: const Text('Register', style: TextStyle(fontSize: 20),),
                                ),
                              ),
                            ],
                          ),
                          buildButton(
                              bgColor: Colors.white,
                              fgColor: Colors.blue,
                              img: 'assets/icons/facebook.png',
                              text: 'Continue with facebook',
                              onPressed: () {}),
                          buildButton(
                              bgColor: Colors.white,
                              fgColor: Colors.black,
                              img: 'assets/icons/google.png',
                              text: 'LOGIN WITH GOOGLE',
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please login first to discover our stunning collection',
                    style: GoogleFonts.comfortaa(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
