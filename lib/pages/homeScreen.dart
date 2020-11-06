import 'package:Fereej_test3/widgets/homeScreen_widgets/categorySelector.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/clippingClass.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/optionSelector.dart';
import 'package:flutter/material.dart';

CategorySelector categorySelector = CategorySelector();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage('assets/Me.jpg'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: ClipPath(
                            clipper: ClippingClass(),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.expand_more,
                                    size: 30,
                                    color: Color.fromARGB(0xff, 252, 163, 17),
                                  ),
                                  Text(
                                    'Budaiya, 5312',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              width: 250,
                              height: 130,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(80, 198, 212, 220),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 19),
                            child: Icon(
                              Icons.apps,
                              size: 39,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      labelText: 'WHAT ARE YOU LOOKING FOR ?',
                      labelStyle: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 19,
                        color: Color.fromARGB(0xff, 198, 212, 220),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CHOOSE A CATEGORY',
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                        Text(
                          '..',
                          style: TextStyle(
                              letterSpacing: 5,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                              color: Color.fromARGB(0xff, 252, 163, 17)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 200,
                child: CategorySelector(),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(child: OptionSelector()),
        ],
      ),
    );
  }
}
