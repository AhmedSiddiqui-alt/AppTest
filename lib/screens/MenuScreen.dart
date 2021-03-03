import '../widgets/navigationTopMenu.dart';
import 'package:flutter/material.dart';
import '../provider/foodProvider.dart';
import 'package:provider/provider.dart';
import '../widgets/menuDetail.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool init = true;
  @override
  void didChangeDependencies() {
    if (init) {
      // print('Clicked');
      Provider.of<foodProvider>(context).fetchData().then((value) {
        setState(() {
          loading = false;
        });
      });
    }
    init = false;
    super.didChangeDependencies();
  }

  bool loading = true;
  @override
  final appbar = AppBar(
    backgroundColor: Colors.white,
    title: Text('Menu', style: TextStyle(color: Colors.black)),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {})
    ],
  );
  @override
  Widget build(BuildContext context) {
    final fooddata = Provider.of<foodProvider>(context);
    return Scaffold(
      appBar: appbar,
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                height: (MediaQuery.of(context).size.height -
                        appbar.preferredSize.height) *
                    1,
                child: LayoutBuilder(builder: (ctx, constraints) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: constraints.maxHeight * 0.1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5)),
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
                        ),
                      ),
                      Container(
                        height: constraints.maxHeight * 0.05,
                        // color: Colors.green,
                        child: NavigationTopMenu(),
                      ),
                      Container(
                        // color: Colors.grey[400],
                        height: constraints.maxHeight * 0.8,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 40,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 2 / 2),
                            itemCount: fooddata.foodData.length,
                            itemBuilder: (ctx, index) {
                              return MenuDetail(
                                id: fooddata.foodData[index].foodId,
                                name: fooddata.foodData[index].foodName,
                                image: fooddata.foodData[index].foodImage,
                                price: fooddata.foodData[index].foodPrice,
                                rating: fooddata.foodData[index].foodReview,
                              );
                            }),
                      )
                    ],
                  );
                }),
              ),
            ),
    );
  }
}
