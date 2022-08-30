import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: items == null
            ? FutureBuilder(
                // future: ,
                builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) => Card(
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
                        title: Text(items[index]),
                      ),
                    ),
                  ),
                );
              })
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage('assets/images/logolist.png')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
