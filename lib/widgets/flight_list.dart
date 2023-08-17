import 'package:book_yourfly/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class FlightList extends StatelessWidget {
  const FlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.withOpacity(.3)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'COK',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '11:30 PM',
                      fontSize: 15,
                      color: Colors.black,
                    )
                  ],
                ),
                // TextWidget(
                //   text: '----------',
                //   fontSize: 20,
                //   color: Colors.black,
                // ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.black,
                  size: 45,
                ),
                // TextWidget(
                //   text: '----------',
                //   fontSize: 20,
                //   color: Colors.black.withOpacity(.2),
                // ),
                Column(
                  children: [
                    TextWidget(
                      text: 'HEL',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '1:45 AM',
                      fontSize: 15,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text: "Spice jet",
                  color: Colors.black,
                ),
                TextWidget(
                  text: "2 h 15 min",
                  color: Colors.black,
                ),
                TextWidget(
                  text: "\$ 150",
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
