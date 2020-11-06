import 'package:flutter/material.dart';

class BestRating {
  final String containerPicture;
  final String headline;
  final String distance;
  final String price;
  final String iconPicture;

  BestRating(
      {@required this.containerPicture,
      @required this.headline,
      @required this.distance,
      @required this.price,
      @required this.iconPicture});
}

List<BestRating> bestRatingList = [
  BestRating(
      containerPicture: 'assets/pizza.jpg',
      headline: 'HOME MADE PIZZA',
      distance: '15 Minutes Away',
      price: 'BD 1.5',
      iconPicture: 'assets/hala.jpg'),
  BestRating(
      containerPicture: 'assets/macrons.png',
      headline: 'TASTY MACRONS',
      distance: '20 Minutes Away',
      price: 'BD 2',
      iconPicture: 'assets/fb.png'),
  BestRating(
      containerPicture: 'assets/salad.png',
      headline: 'HOME MADE SALAD',
      distance: '30 Minutes Away',
      price: 'BD 1.3',
      iconPicture: 'assets/tw.png'),
];
