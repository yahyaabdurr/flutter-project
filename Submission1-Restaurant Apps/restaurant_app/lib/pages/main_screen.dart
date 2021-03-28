import 'package:flutter/material.dart';
import 'package:restaurant_app/models/restaurant_data.dart';
import 'package:restaurant_app/pages/detail_Restaurant.dart';
import 'package:restaurant_app/shared/shared.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        title: Text("Restaurants App", style: TextStyle(color: Colors.black)),
        backgroundColor: mainColor,
      ),
      body: ListView(
          children: listRestaurant.map((resto) {
        return FlatButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RestaurantDetails(resto);
            }));
          },
          child: Card(
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 120,
                    height: 118,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        image: DecorationImage(
                            image: AssetImage(resto.imageSource),
                            fit: BoxFit.cover)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(resto.name, style: titleStyle),
                        Row(children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                          ),
                          SizedBox(width: 8),
                          Text(
                            resto.location,
                            style: contentStyle,
                          )
                        ]),
                        Row(children: [
                          Icon(
                            Icons.query_builder,
                            size: 16,
                          ),
                          SizedBox(width: 8),
                          Text(
                            resto.openTime,
                            style: contentStyle,
                          )
                        ]),
                        RatingStars(resto.ratingRestaurant)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
