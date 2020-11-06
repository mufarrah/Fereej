import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IcecreamShops extends StatefulWidget {
  @override
  _IcecreamShopsState createState() => _IcecreamShopsState();
}

class _IcecreamShopsState extends State<IcecreamShops> {
  var shop_list = [
    {
      'picture': 'assets/sweets1.jpg',
      'name': 'Cake Love',
      'minimume order': 'BD 1',
      'distance': '25 Minutes Away',
      'delivery cost': 'BD 0.8',
    },
    {
      'picture': 'assets/sweet5.jpg',
      'name': 'Yellow CupCake',
      'minimume order': 'BD 2',
      'distance': '15 Minutes Away',
      'delivery cost': 'BD 0.8',
    },
    {
      'picture': 'assets/sweets3.jpg',
      'name': 'Sweet Cake',
      'minimume order': 'BD 2.5',
      'distance': '30 Minutes Away',
      'delivery cost': 'BD 0.8',
    },
    {
      'picture': 'assets/sweets4.jpg',
      'name': 'Monkey Creative',
      'minimume order': 'BD 1.5',
      'distance': '10 Minutes Away',
      'delivery cost': 'BD 0.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        reverse: false,
        itemCount: shop_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3 / 2, crossAxisSpacing: 0),
        itemBuilder: (BuildContext context, int index) {
          return Single_shop(
            shop_name: shop_list[index]['name'],
            shop_picture: shop_list[index]['picture'],
            minimume_order: shop_list[index]['minimume order'],
            distance: shop_list[index]['distance'],
            delivery_cost: shop_list[index]['delivery cost'],
          );
        });
  }
}

class Single_shop extends StatelessWidget {
  final shop_name;
  final shop_picture;
  final minimume_order;
  final distance;
  final delivery_cost;

  Single_shop(
      {this.shop_name,
      this.shop_picture,
      this.minimume_order,
      this.distance,
      this.delivery_cost});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        child: Hero(
            tag: shop_name,
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Image.asset(shop_picture),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text(
                                shop_name,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color.fromARGB(0xff, 64, 61, 57),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Minimume Order:$minimume_order',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Avenir",
                                    color: Color.fromARGB(0xff, 122, 122, 122),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.mapPin),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    distance,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Avenir",
                                        color:
                                            Color.fromARGB(0xff, 242, 96, 39),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Delivery Cost: $delivery_cost',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromARGB(0xff, 64, 61, 57),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
