import 'package:flutter/material.dart';

class NavigationTopButton extends StatefulWidget {
  @override
  _NavigationTopButtonState createState() => _NavigationTopButtonState();
}

class _NavigationTopButtonState extends State<NavigationTopButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
              height: constraints.maxHeight * 0.05,
              child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Kinza',
                    style: TextStyle(color: Colors.black),
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(5)),
              height: constraints.maxHeight * 0.05,
              child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Mamman',
                    style: TextStyle(color: Colors.black),
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
              height: constraints.maxHeight * 0.05,
              child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Tanuki',
                    style: TextStyle(color: Colors.black),
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
              height: constraints.maxHeight * 0.05,
              child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Gastrol',
                    style: TextStyle(color: Colors.black),
                  )))
        ],
      );
    });
  }
}
