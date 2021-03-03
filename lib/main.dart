import 'package:FoodApp/screens/checkScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/foodProvider.dart';
// import './screens/checkScreen.dart';
import './screens/MenuScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: foodProvider())],
      child: MaterialApp(home: MenuScreen()),
    
    );
  }
}
