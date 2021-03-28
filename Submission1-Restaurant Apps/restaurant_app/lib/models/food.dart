import 'package:flutter/cupertino.dart';

class Food {
  String name;
  double foodRatings;
  double price;
  String description;
  String imageSource;

  Food(
      {@required this.name,
      @required this.price,
      @required this.imageSource,
      this.foodRatings,
      this.description});
}
