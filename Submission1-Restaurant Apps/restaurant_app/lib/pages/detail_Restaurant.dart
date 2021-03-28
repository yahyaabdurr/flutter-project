import 'package:flutter/material.dart';
import 'package:restaurant_app/models/restaurant.dart';
import 'package:restaurant_app/pages/detail_food.dart';
import 'package:restaurant_app/shared/shared.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class RestaurantDetails extends StatelessWidget {
  final Restaurant resto;
  RestaurantDetails(this.resto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(resto.imageSource),
                            fit: BoxFit.cover)),
                  ),
                ),
                SafeArea(
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                SafeArea(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 280),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          resto.name,
                          style: titleStyle.copyWith(fontSize: 20),
                        ),
                        RatingStars(resto.ratingRestaurant),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16,
                            ),
                            SizedBox(width: 8),
                            Text(
                              resto.location,
                              style: contentStyle,
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(resto.description,
                              style: contentStyle.copyWith(fontSize: 16)),
                        ),
                        Text('Best Sellers Menu', style: titleStyle),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 210,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: resto.menu.map((menu) {
                              return FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return FoodDetails(menu);
                                    }));
                                  },
                                  child: FoodCard(menu));
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
