import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductSlider extends StatefulWidget {
  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        images: [
          AssetImage('assets/images/prod1.jpeg'),
          AssetImage('assets/images/prod2.jpeg'),
          AssetImage('assets/images/prod3.jpeg'),
          AssetImage('assets/images/prod4.jpeg'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(
          milliseconds: 800,
        ),
      ),
    );
  }
}
