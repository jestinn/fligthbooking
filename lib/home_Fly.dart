import 'package:book_yourfly/widgets/dateTimeField.dart';
import 'package:book_yourfly/widgets/textField_widget.dart';
import 'package:book_yourfly/widgets/text_widget.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import 'flightSearch.dart';

class HomeFly extends StatefulWidget {
  const HomeFly({super.key});

  @override
  State<HomeFly> createState() => _HomeFlyState();
}

class _HomeFlyState extends State<HomeFly> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/flight3.jpg'),
                      fit: BoxFit.fill)),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue.withOpacity(.8),
                  Colors.blue.withOpacity(.6)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 100, left: 50),
                        child: TextWidget(
                          text: 'Book Your Fly',
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        )),
                    Center(
                      child: CustomSlidingSegmentedControl(
                          fixedWidth: 100,
                          initialValue: 1,
                          children: const {
                            1: TextWidget(
                              text: 'One Way',
                              color: Colors.white,
                            ),
                            2: TextWidget(
                              text: 'Round Trip',
                              color: Colors.white,
                            ),
                          },
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(.05),
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          thumbDecoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                              ),
                            ],
                          ),
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInToLinear,
                          onValueChanged: (v) {
                            print(v);
                            setState(() {
                              selectedIndex = v;
                              if (v == 2) {}
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        // color: Colors.white.withOpacity(.5),
                        height: 435,
                        width: 330,
                        // color: Colors.blue,
                        child: selectedIndex == 1
                            ? Center(
                                child: Container(
                                  height: 435,
                                  width: 330,
                                  child: Column(
                                    children: [
                                      const TextFieldWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        borderColor: Colors.white,
                                        label: 'From',
                                        textColor: Colors.white,
                                        textFieldFontSize: 30,
                                        suffixIcon: Icon(
                                          Icons.arrow_downward,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const TextFieldWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        borderColor: Colors.white,
                                        label: 'To',
                                        textColor: Colors.white,
                                        textFieldFontSize: 30,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      DateTimeField(datefield: 'Departure'),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const TextFieldWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        borderColor: Colors.white,
                                        label: 'Passangers',
                                        textColor: Colors.white,
                                        textFieldFontSize: 30,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const TextFieldWidget(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        borderColor: Colors.white,
                                        label: 'Class',
                                        textColor: Colors.white,
                                        textFieldFontSize: 30,
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      SizedBox(
                                        height: 40,
                                        width: 350,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: TextWidget(
                                              text: 'Fly',
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Column(
                                children: [
                                  const TextFieldWidget(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    borderColor: Colors.white,
                                    label: 'From',
                                    textColor: Colors.white,
                                    textFieldFontSize: 30,
                                    suffixIcon: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const TextFieldWidget(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    borderColor: Colors.white,
                                    label: 'To',
                                    textColor: Colors.white,
                                    textFieldFontSize: 30,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 160,
                                        child: DateTimeField(
                                          datefield: 'Departure',
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        width: 160,
                                        child: DateTimeField(
                                          datefield: 'Arrival',
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const TextFieldWidget(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    borderColor: Colors.white,
                                    label: 'Passangers',
                                    textColor: Colors.white,
                                    textFieldFontSize: 30,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const TextFieldWidget(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    borderColor: Colors.white,
                                    label: 'Class',
                                    textColor: Colors.white,
                                    textFieldFontSize: 30,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 350,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      FlightSearch()));
                                        },
                                        child: const TextWidget(
                                          text: 'Fly',
                                        )),
                                  )
                                ],
                              ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
