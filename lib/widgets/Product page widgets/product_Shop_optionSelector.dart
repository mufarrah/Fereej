import 'package:Fereej_test3/models/for_you_model.dart';
import 'package:Fereej_test3/pages/homeScreen.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/Products/productsAll.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/cakesShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/icecreamShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/pancakeShops.dart';
import 'package:Fereej_test3/widgets/Product%20page%20widgets/shops/traditionalShops.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/Best_rating_widget.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/For_you_widget.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/Nerby_you_widget.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/optionSelector.dart';
import 'package:flutter/material.dart';

import 'shops/ShopsAll.dart';
import 'option_selector_categories.dart';

HomeScreen myHome = HomeScreen();

class ProductShopSelector extends StatefulWidget {
  @override
  _ProductShopSelectorState createState() => _ProductShopSelectorState();
}

class _ProductShopSelectorState extends State<ProductShopSelector> {
  PageController pageController = PageController(initialPage: 0);

  int pageChanged = 0;
  int selectedIndex = 0;
  int selectedIndex1 = 0;
  final List<String> options = ['SHOPS', 'PRODUCTS'];
  final List<String> circles = [
    'ALL',
    'CAKES',
    'TRADITIONAL',
    'ICECREAM',
    'PANCAKES',
  ];

  final List<String> circleImages = [
    'assets/sweet6.jpg',
    'assets/sweet7.jpg',
    'assets/sweet8.jpg',
    'assets/sweet9.jpg',
    'assets/sweet10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //the code for shops and products is here,
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Container(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 3.0,
                      width: width * 0.29,
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
                      child: Center(
                        child: Padding(
                          padding: index == selectedIndex
                              ? const EdgeInsets.all(1.0)
                              : const EdgeInsets.all(0.0),
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
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ), //the code for the horizental circles is here
        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: circles.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    pageController.animateToPage(
                        selectedIndex == 0 && selectedIndex1 == 0
                            ? 0
                            : selectedIndex == 0 && selectedIndex1 == 1
                                ? 1
                                : selectedIndex == 0 && selectedIndex1 == 2
                                    ? 2
                                    : selectedIndex == 0 && selectedIndex1 == 3
                                        ? 3
                                        : selectedIndex == 0 &&
                                                selectedIndex1 == 4
                                            ? 4
                                            : selectedIndex == 1 &&
                                                    selectedIndex1 == 0
                                                ? 5
                                                : 0,
                        duration: Duration(milliseconds: 10),
                        curve: Curves.decelerate);
                    setState(() {
                      selectedIndex1 = index;
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
                            color: index == selectedIndex1
                                ? Color.fromARGB(0xff, 36, 35, 33)
                                : Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(150),
                          color: index == selectedIndex1
                              ? Color.fromARGB(0xff, 36, 35, 33)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: index == selectedIndex1
                                    ? Offset(0, 0)
                                    : Offset(0, 0),
                                blurRadius: index == selectedIndex1 ? 8 : 0,
                                color: index == selectedIndex1
                                    ? Colors.grey
                                    : Colors.white),
                          ],
                        ),
                        child: Container(
                          height: 50.0,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(circleImages[index])),
                            border: Border.all(
                              width: 0,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(150),
                            color: index == selectedIndex
                                ? Color.fromARGB(0xff, 36, 35, 33)
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: index == selectedIndex1
                                      ? Offset(0, 0)
                                      : Offset(0, 0),
                                  blurRadius: index == selectedIndex1 ? 8 : 0,
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
                          circles[index],
                          style: TextStyle(
                              fontSize: index == selectedIndex1 ? 17 : 15,
                              fontFamily: "Avenir",
                              color: index == selectedIndex1
                                  ? Color.fromARGB(0xff, 242, 96, 39)
                                  : Colors.grey,
                              fontWeight: index == selectedIndex1
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
        ),
        Expanded(
          child: Container(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                  selectedIndex1 = pageChanged;
                });
              },
              pageSnapping: true,
              controller: pageController,
              children: [
                ShopsAll(),
                CakeShops(),
                TraditionalShops(),
                IcecreamShops(),
                PancakeShops(),
                ProductsAll(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
