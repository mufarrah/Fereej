import 'package:Fereej_test3/pages/drinks_page.dart';
import 'package:Fereej_test3/pages/food_page.dart';
import 'package:Fereej_test3/pages/sweets_page.dart';
import 'package:Fereej_test3/pages/homeScreen.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int currentPage = 0;
  final PageController pageController =
      PageController(keepPage: false, viewportFraction: 0.38);

  var listSlide = [
    {'id': 0, 'image': 'assets/sweets.png', 'text': 'SWEETS'},
    {'id': 1, 'image': 'assets/burger.png', 'text': 'FOOD'},
    {'id': 2, 'image': 'assets/drinks.png', 'text': 'DRINKS'},
    {'id': 3, 'image': 'assets/blaack.png', 'text': 'STYLE'},
    {'id': 4, 'image': 'assets/laptop.png', 'text': 'Technology'},
  ];

  @override
  void initState() {
    pageController.addListener(() {
      int next = pageController.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (currentPage == 0) {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SweetsPage(),
                ));
          });
        } else if (currentPage == 1) {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(),
                ));
          });
        } else if (currentPage == 2) {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrinksPage(),
                ));
          });
        }
      },
      child: Container(
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          controller: pageController,
          itemCount: listSlide.length,
          itemBuilder: (context, index) => AnimatedListItemBuilder(index),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedListItemBuilder(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - index;
            value = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 180,
              width: Curves.easeOut.transform(value) * 148,
              child: child,
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: index == currentPage
                ? Color.fromARGB(0xff, 36, 35, 33)
                : Colors.white,
            borderRadius: index == currentPage
                ? BorderRadius.circular(30)
                : BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: index == currentPage
                              ? BoxFit.contain
                              : BoxFit.contain,
                          image: AssetImage(listSlide[index]['image']),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(listSlide[index]['text'],
                          style: TextStyle(
                              fontSize: index == currentPage ? 18 : 10,
                              fontFamily: "Avenir",
                              color: index == currentPage
                                  ? Color.fromARGB(0xff, 242, 96, 39)
                                  : Colors.black,
                              fontWeight: FontWeight.w900)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
