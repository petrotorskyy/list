import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoWidget(),
          itemList(items: items),
        ],
      ),
    );
  }
}

class itemList extends StatelessWidget {
  const itemList({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(50, (index) {
          return Container(
            child: Card(
              elevation: 6,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListTile(
                  title: Text(items[index + 1]),
                ),
              ),
            ),
          );
        }),
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
