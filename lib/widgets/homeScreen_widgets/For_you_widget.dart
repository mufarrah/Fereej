import 'package:Fereej_test3/models/for_you_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForYouWidget extends StatelessWidget {
  final int index;
  ForYouWidget({this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey[100]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 135,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: Colors.grey[300]),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            forYouList[0].containerPicture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 3),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(0xff, 242, 96, 39),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        forYouList[0].headline,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color.fromARGB(0xff, 64, 61, 57),
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.mapPin),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            forYouList[0].distance,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Avenir",
                                color: Color.fromARGB(0xff, 122, 122, 122),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Text(
                              forYouList[0].price,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(0xff, 64, 61, 57),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 17.0, right: 12),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage(forYouList[0].iconPicture),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey[100]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 135,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: Colors.grey[300]),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            forYouList[1].containerPicture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 3),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(0xff, 242, 96, 39),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        forYouList[1].headline,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color.fromARGB(0xff, 64, 61, 57),
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.mapPin),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            forYouList[1].distance,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Avenir",
                                color: Color.fromARGB(0xff, 122, 122, 122),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Text(
                              forYouList[1].price,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(0xff, 64, 61, 57),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 17.0, right: 12),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage(forYouList[1].iconPicture),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey[100]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 135,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: Colors.grey[300]),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 6,
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            forYouList[2].containerPicture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, top: 3),
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(0xff, 242, 96, 39),
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        forYouList[2].headline,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color.fromARGB(0xff, 64, 61, 57),
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.mapPin),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            forYouList[2].distance,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Avenir",
                                color: Color.fromARGB(0xff, 122, 122, 122),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Text(
                              forYouList[2].price,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(0xff, 64, 61, 57),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(0xff, 242, 96, 39),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 17.0, right: 12),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage(forYouList[2].iconPicture),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
