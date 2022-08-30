import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            LogoWidget(),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  ItemsWidget(),
                ],
              ),
            ),
            SizedBox(height: 15.0)
          ],
        ),
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/logolist.png')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  ItemsWidget({
    Key? key,
  }) : super(key: key);
  final List<String> items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Card(
              elevation: 6,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListTile(
                  title: Text(items[index+1]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
