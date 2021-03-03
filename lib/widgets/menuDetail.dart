import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MenuDetail extends StatelessWidget {
  final String id;
  final String image;
  final String name;
  final String price;
  final String rating;
  MenuDetail({this.id, this.name, this.image, this.price, this.rating});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constaints) {
      return Container(
        height: constaints.maxHeight * 0.8,
        child: GridTile(
          child: Column(
            children: <Widget>[
              Container(
                // height: constaints.maxHeight * 0.6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(image),
                ),
              ),
            ],
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Center(
              child: Container(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
