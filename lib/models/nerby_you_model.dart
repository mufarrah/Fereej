import 'package:flutter/material.dart';

class NerbyYou {
  final String containerPicture;
  final String headline;
  final String distance;
  final String price;
  final String iconPicture;

  NerbyYou(
      {@required this.containerPicture,
      @required this.headline,
      @required this.distance,
      @required this.price,
      @required this.iconPicture});
}

List<NerbyYou> nerbyYouList = [
  NerbyYou(
      containerPicture: 'assets/11.png',
      headline: 'HOT MICCIYATO',
      distance: '15 Minutes Away',
      price: 'BD 1.5',
      iconPicture: 'assets/1.png'),
  NerbyYou(
      containerPicture: 'assets/22.png',
      headline: 'CLUB SANDWITCH',
      distance: '20 Minutes Away',
      price: 'BD 2',
      iconPicture: 'assets/2.png'),
  NerbyYou(
      containerPicture: 'assets/66.png',
      headline: 'HOME SPAGETTI',
      distance: '30 Minutes Away',
      price: 'BD 1.3',
      iconPicture: 'assets/6.png'),
];
