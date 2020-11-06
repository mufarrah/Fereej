import 'package:flutter/material.dart';

class OptionSelectorCategory extends StatefulWidget {
  @override
  _OptionSelectorCategoryState createState() => _OptionSelectorCategoryState();
}

class _OptionSelectorCategoryState extends State<OptionSelectorCategory> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int selectedIndex = 0;
  final List<String> options = [
    'ALL',
    'CAKES',
    'TRADITIONAL',
    'ICECREEM',
    'PANCAKES',
  ];
  final List<String> categoryImages = [''];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 10),
                    curve: Curves.decelerate);
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                children: [
                  Container(
                    height: 70.0,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: index == selectedIndex
                            ? Color.fromARGB(0xff, 36, 35, 33)
                            : Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(150),
                      color: index == selectedIndex
                          ? Color.fromARGB(0xff, 36, 35, 33)
                          : Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: index == selectedIndex
                                ? Offset(0, 0)
                                : Offset(0, 0),
                            blurRadius: index == selectedIndex ? 8 : 0,
                            color: index == selectedIndex
                                ? Colors.grey
                                : Colors.white),
                      ],
                    ),
                    child: Container(
                      height: 50.0,
                      width: 50,
                      decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage('assets/Me.jpg')),
                        border: Border.all(
                          width: 0,
                          color: index == selectedIndex
                              ? Color.fromARGB(0xff, 36, 35, 33)
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(150),
                        color: index == selectedIndex
                            ? Color.fromARGB(0xff, 36, 35, 33)
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: index == selectedIndex
                                  ? Offset(0, 0)
                                  : Offset(0, 0),
                              blurRadius: index == selectedIndex ? 8 : 0,
                              color: index == selectedIndex
                                  ? Colors.grey
                                  : Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      options[index],
                      style: TextStyle(
                          letterSpacing: 0.2,
                          fontSize: index == selectedIndex ? 20 : 20,
                          fontFamily: "Avenir",
                          color: index == selectedIndex
                              ? Color.fromARGB(0xff, 242, 96, 39)
                              : Colors.grey,
                          fontWeight: index == selectedIndex
                              ? FontWeight.w600
                              : FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
