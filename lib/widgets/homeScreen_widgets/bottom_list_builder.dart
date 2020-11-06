import 'package:flutter/material.dart';

class BottomListBuilder extends StatefulWidget {
  @override
  _BottomListBuilder createState() => _BottomListBuilder();
}

class _BottomListBuilder extends State<BottomListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 135,
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10), blurRadius: 20, color: Colors.grey)
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
                        'assets/burger2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, top: 3),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
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
                    'CHICKEN TIKKA MASALA',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Color.fromARGB(0xff, 64, 61, 57),
                    ),
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      Icon(Icons.add_location),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '15 minutes away',
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
                          'BD 1.5',
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
                          color: Color.fromARGB(0xff, 235, 94, 39),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(0xff, 235, 94, 39),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(0xff, 235, 94, 39),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(0xff, 235, 94, 39),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(0xff, 235, 94, 39),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 17.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/hala.jpg'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
