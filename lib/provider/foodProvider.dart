import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class foodProvider with ChangeNotifier {
  List<Food> foodItem = [];
  List<Food> get foodData {
    return [...foodItem];
  }

  //Post Function
  Future<void> postData(String Name, String Image, String Price) async {
    final url = 'https://testapp-620a7-default-rtdb.firebaseio.com/foods.json';
    try {
      final response = await http.post(url,
          body: json.encode(
              {"foodName": Name, 'foodImage': Image, 'foodPrice': Price}));
      notifyListeners();
    } catch (catchError) {
      throw Exception(catchError);
    }
  }

  Future<void> fetchData() async {
    final url = 'https://testapp-620a7-default-rtdb.firebaseio.com/foods.json';
    try {
      final response = await http.get(url);
      final extractData =
          await json.decode(response.body) as Map<String, dynamic>;
      print(extractData);
      List<Food> getData = [];
      extractData.forEach((key, value) {
        foodItem.add(Food(
            foodId: key,
            foodName: value['foodName'],
            foodPrice: value['foodPrice'],
            foodReview: value['foodReview'],
            foodImage: value['foodImage']));
      });
print(foodItem.length);
      notifyListeners();
    } catch (error) {
      throw Exception(error);
    }
  }
}
