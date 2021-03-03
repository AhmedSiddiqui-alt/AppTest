import 'package:flutter/material.dart';

class NavigationTopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'All',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              'Pizza',
              style: TextStyle(color: Colors.grey[400], fontSize: 15),
            ),
          ),
          Container(
              child: Text(
            'Burger',
            style: TextStyle(color: Colors.grey[400], fontSize: 15),
          )),
          Container(
            child: Text(
              'Salad',
              style: TextStyle(color: Colors.grey[400], fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              'Pasta',
              style: TextStyle(color: Colors.grey[400],fontSize: 15),
            ),
          ),
          Container(
            child: Text(
              'Apetizer',
              style: TextStyle(color: Colors.grey[400],fontSize: 15),
            ),
          )
        ],
      );
    });
  }
}
