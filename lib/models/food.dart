import 'package:flutter/material.dart';

class Food {
  final String foodId;
  final String foodName;
  final String foodPrice;
  final String foodReview;
  final String foodImage;
  Food(
      {@required this.foodId,
      @required this.foodName,
      @required this.foodPrice,
      @required this.foodReview,
      @required this.foodImage});
}
