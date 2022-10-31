import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'ProductSlider.dart';

class HomeBody extends StatefulWidget {
  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ProductSlider(),
          Center(child: Text('{Sorting Column}')),
          SizedBox(height: 200),
          Container(
              height: 400,
              child: GridView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.all(5),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        index: index,
                                      )));
                        }),
                        child: Image.asset('assets/images/prod1.jpeg'));
                  })),
        ],
      )),
    );
  }
}
