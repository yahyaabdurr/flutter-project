import 'package:flutter/cupertino.dart';
import 'package:restaurant_app/models/food.dart';

class Restaurant {
  String name;
  String location;
  double ratingRestaurant;
  String description;
  String openTime;
  String imageSource;
  List<Food> menu;

  Restaurant(
      {@required this.name,
      @required this.location,
      @required this.description,
      @required this.imageSource,
      this.menu,
      this.openTime,
      this.ratingRestaurant});
}
