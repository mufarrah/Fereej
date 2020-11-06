import 'package:Fereej_test3/widgets/homeScreen_widgets/categorySelector.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/clippingClass.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/optionSelector.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int selectedIndex = 0;
  final List<String> options = ['For you', 'Nerby you', 'Best rating'];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(80, 198, 212, 220),
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 6),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/Me.jpg'),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.expand_more,
                size: 30,
                color: Color.fromARGB(0xff, 242, 96, 39),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'Budaiya, 5312',
                  style: TextStyle(
                    fontFamily: 'Avenir Next',
                    fontSize: 18,
                    color: Color.fromARGB(0xff, 36, 35, 33),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                FontAwesomeIcons.gripVertical,
                size: 35,
                color: Color.fromARGB(0xff, 36, 35, 33),
              ),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 1000,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 340,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 33),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.search,
                                    size: 30,
                                    color: Color.fromARGB(0xff, 36, 35, 33),
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'WHAT ARE YOU LOOKING FOR ?',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 18,
                                    color: Color.fromARGB(0xff, 198, 212, 220),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,
                              left: 33,
                              right: 10,
                              child: Text(
                                'CHOOSE A CATEGORY',
                                style: TextStyle(
                                  fontFamily: 'Avenir Next',
                                  fontSize: 30,
                                  color: const Color(0xff000000),
                                  letterSpacing: 0.6176470470428467,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            ClipPath(
                              clipper: ClippingClass(),
                              child: Container(
                                color: Color.fromARGB(80, 198, 212, 220),
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Positioned(
                                top: 160,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: CategorySelector(),
                                )),
                          ],
                        ),
                      ),
                      Expanded(child: OptionSelector()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromARGB(0xff, 36, 35, 33),
          backgroundColor: Colors.white,
          buttonBackgroundColor: Color.fromARGB(0xff, 242, 96, 39),
          height: 46,
          items: <Widget>[
            Icon(
              FontAwesomeIcons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.clipboardList,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.shoppingCart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.heart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.user,
              size: 30,
              color: Colors.white,
            ),
          ],
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            debugPrint('Current index is $index');
          },
        ),
      ),
    );
  }
}
