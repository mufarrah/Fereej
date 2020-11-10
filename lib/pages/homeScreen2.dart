import 'package:Fereej_test3/pages/main_page.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/categorySelector.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/clippingClass.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/drawer_buttons.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/drawer_clipper.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/optionSelector.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/painter_class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

MainPage myMainPage = MainPage();

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  PageController pageController = PageController(initialPage: 0);
  Offset _offset = Offset(0, 0);
  GlobalKey globalKey = GlobalKey();
  List<double> limits = [];
  int pageChanged = 0;
  int selectedIndex = 0;
  final List<String> options = ['For you', 'Nerby you', 'Best rating'];
  bool isDrawerOpen = false;
  @override
  void initState() {
    limits = [0, 0, 0, 0, 0, 0];
    WidgetsBinding.instance.addPostFrameCallback(getPosition);
    super.initState();
  }

  getPosition(Duration) {
    RenderBox renderBox = globalKey.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    double start = position.dy - 20;
    double contLimit = position.dy + renderBox.size.height - 20;
    double step = (contLimit - start) / 4;
    limits = [];
    for (double x = start; x <= contLimit; x = x + step) {
      limits.add(x);
    }
    setState(() {
      limits = limits;
    });
  }

  double getSize(int x) {
    double size =
        (_offset.dy > limits[x] && _offset.dy < limits[x + 1]) ? 10 : 8;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double sizebarsize = MediaQuery.of(context).size.width * 0.2;
    double drawerContainerheight = height * 0.85;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 112),
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
                                      color:
                                          Color.fromARGB(0xff, 198, 212, 220),
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
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              color: Color.fromARGB(80, 198, 212, 220),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.expand_more,
                              size: 30,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Text(
                              'Budaiya, 5312',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(0xff, 36, 35, 33),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 75,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage('assets/Me.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 900),
            left: isDrawerOpen ? 0 : -sizebarsize,
            top: 0,
            curve: Curves.easeOutQuart,
            child: Container(
              width: sizebarsize + 50,
              height: height,
              child: Stack(
                children: [
                  SizedBox(
                    width: sizebarsize,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        if (details.localPosition.dx <= sizebarsize) {
                          setState(() {
                            _offset = details.localPosition;
                          });
                        }
                        if (details.localPosition.dx > sizebarsize - 10 &&
                            details.delta.distanceSquared > 2) {
                          setState(() {
                            isDrawerOpen = true;
                          });
                        }
                      },
                      onPanEnd: (details) {
                        setState(() {
                          _offset = Offset(0, 0);
                        });
                      },
                      child: Stack(
                        children: [
                          CustomPaint(
                            size: Size(sizebarsize, height),
                            painter: DrawerPainter(offset: _offset),
                          ),
                          Container(
                            key: globalKey,
                            height: drawerContainerheight,
                            width: sizebarsize,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MyButton(
                                  text: 'NOTIFICATIONS',
                                  iconData: FontAwesomeIcons.bell,
                                  textSize: getSize(0),
                                  height: drawerContainerheight / 4,
                                ),
                                MyButton(
                                  text: 'WALLET',
                                  iconData: FontAwesomeIcons.wallet,
                                  textSize: getSize(1),
                                  height: drawerContainerheight / 4,
                                ),
                                MyButton(
                                  text: 'CONTACT',
                                  iconData: FontAwesomeIcons.comment,
                                  textSize: getSize(2),
                                  height: drawerContainerheight / 4,
                                ),
                                MyButton(
                                  text: 'ABOUT US',
                                  iconData: FontAwesomeIcons.infoCircle,
                                  textSize: getSize(3),
                                  height: drawerContainerheight / 4,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: sizebarsize,
                    top: 1,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        setState(() {
                          isDrawerOpen = true;
                        });
                      },
                      onTap: () {
                        setState(() {
                          isDrawerOpen = false;
                        });
                      },
                      child: ClipPath(
                        clipper: DrawerClipper(),
                        child: Container(
                          color: Color.fromARGB(0xff, 36, 35, 33),
                          width: 50,
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Icon(
                              FontAwesomeIcons.bars,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
