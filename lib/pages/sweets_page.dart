import 'package:Fereej_test3/widgets/Product%20page%20widgets/product_Shop_optionSelector.dart';
import 'package:Fereej_test3/widgets/homeScreen_widgets/clippingClass.dart';
import 'package:flutter/material.dart';

class SweetsPage extends StatefulWidget {
  @override
  _SweetsPageState createState() => _SweetsPageState();
}

class _SweetsPageState extends State<SweetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1500,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: ClippingClass(),
                          child: Container(
                            color: Color.fromARGB(80, 198, 212, 220),
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Positioned(
                          left: 130,
                          right: 110,
                          top: 60,
                          child: Container(
                            height: 220,
                            width: 220,
                            child: Image.asset(
                              'assets/sweets.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SWEETS',
                      style: TextStyle(
                        fontFamily: 'Avenir Next',
                        fontSize: 30,
                        color: Color.fromARGB(0xff, 36, 35, 33),
                        letterSpacing: 0.6176470470428467,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(child: ProductShopSelector())
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
