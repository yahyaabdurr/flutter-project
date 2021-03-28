import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_app/models/food.dart';
import 'package:restaurant_app/shared/shared.dart';
import 'package:restaurant_app/widgets/widgets.dart';

class FoodDetails extends StatefulWidget {
  final Food food;

  FoodDetails(this.food);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int quantity = 1;
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
                            image: AssetImage(widget.food.imageSource),
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.food.name,
                                  style: titleStyle.copyWith(fontSize: 20),
                                ),
                                RatingStars(widget.food.foodRatings),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = max(1, quantity - 1);
                                    });
                                  },
                                  child: Container(
                                    height: 26,
                                    width: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/btn_min.png'))),
                                  ),
                                ),
                                SizedBox(
                                  width: 24,
                                  child:
                                      Center(child: Text(quantity.toString())),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = max(1, quantity + 1);
                                    });
                                  },
                                  child: Container(
                                    height: 26,
                                    width: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/btn_add.png'))),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(widget.food.description,
                              style: contentStyle.copyWith(fontSize: 16)),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Total Price", style: titleStyle),
                                Text(
                                    NumberFormat.currency(
                                            locale: 'id-ID',
                                            symbol: 'Rp ',
                                            decimalDigits: 2)
                                        .format(widget.food.price * quantity),
                                    style:
                                        titleStyle.copyWith(color: greyColor))
                              ],
                            ),
                            Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Order Now",
                                  style: titleStyle,
                                ),
                              ),
                            ),
                          ],
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
