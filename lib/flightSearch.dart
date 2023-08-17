import 'package:book_yourfly/widgets/flight_list.dart';
import 'package:book_yourfly/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FlightSearch extends StatefulWidget {
  const FlightSearch({super.key});

  @override
  State<FlightSearch> createState() => _FlightSearchState();
}

class _FlightSearchState extends State<FlightSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              // color: Colors.grey,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/flight2.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(.8),
                          Colors.blue.withOpacity(.6)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              text: 'COK',
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            TextWidget(
                              text: 'Cochin',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        ),
                        TextWidget(
                          text: '----------',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                          size: 45,
                        ),
                        TextWidget(
                          text: '----------',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        Column(
                          children: [
                            TextWidget(
                              text: 'HEL',
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            TextWidget(
                              text: 'Helsinki',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Row(
                        children: [
                          TextWidget(
                            text: "5 oct 2023",
                            color: Colors.white,
                          ),
                          Spacer(),
                          TextWidget(
                            text: "1 passenger",
                            color: Colors.white,
                          ),
                          Spacer(),
                          TextWidget(
                            text: "economy",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextWidget(text: '117 Flight Found'),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_outlined,
                        size: 30,
                      )),
                ),
              ],
            ),
            const FlightList(),
            const SizedBox(
              height: 10,
            ),
            const FlightList(),
            const SizedBox(
              height: 10,
            ),
            const FlightList(),
            const SizedBox(
              height: 10,
            ),
            const FlightList(),
          ],
        ),
      ),
    );
  }
}
