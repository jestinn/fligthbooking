import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

import 'home_Fly.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/flight6.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.withOpacity(.5),
                    Colors.blue.withOpacity(.2)
                  ]),
                  // color: Colors.brown.withOpacity(.5),
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Fly With Comfort',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.alice(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(
                        "Go where you want to go. Wherever you're going, we'll get you there",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.alice(
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SliderButton(
                      width: 320,
                      action: () {
                        ///Do something here
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeFly(),
                        ));
                      },
                      label: Text(
                        "Fly with BookYourFly",
                        style: GoogleFonts.alice(
                          letterSpacing: 3,
                          textStyle: const TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.w500,
                            fontSize: 21.5,
                          ),
                        ),
                      ),
                      icon: const Icon(
                        Icons.flight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
