import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/foodProvider.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FlatButton(
              onPressed: () {
                print('Clicked');
                Provider.of<foodProvider>(context).postData(
                    'Vegetables',
                    'assets/images/image4.jpg',
                    '15.50');
              },
              child: Text('Add')),
        ),
      ),
    );
  }
}
