import 'package:flutter/material.dart';

class ForYou {
  final String containerPicture;
  final String headline;
  final String distance;
  final String price;
  final String iconPicture;

  ForYou(
      {@required this.containerPicture,
      @required this.headline,
      @required this.distance,
      @required this.price,
      @required this.iconPicture});
}

List<ForYou> forYouList = [
  ForYou(
      containerPicture: 'assets/44.png',
      headline: 'TARAMISSO CAKE',
      distance: '15 Minutes Away',
      price: 'BD 1.5',
      iconPicture: 'assets/4.png'),
  ForYou(
      containerPicture: 'assets/55.png',
      headline: 'CHICKEN BIRYANI',
      distance: '20 Minutes Away',
      price: 'BD 2',
      iconPicture: 'assets/5.png'),
  ForYou(
      containerPicture: 'assets/33.png',
      headline: 'HOME COOKIES',
      distance: '30 Minutes Away',
      price: 'BD 1.3',
      iconPicture: 'assets/3.png'),
];
