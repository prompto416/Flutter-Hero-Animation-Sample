import 'package:flutter/material.dart';
import 'package:secondi_main/constants.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  const DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset('assets/images/prod1.jpeg')),
          Text('{Product Info}'),
          SizedBox(height: 10),
          Text('{Product Detail}'),
          SizedBox(height: 10),
          Text('{Product Price}'),
          SizedBox(height: 70),
          Row(
            children: [
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 30),
                  primary: primaryColor,
                  onPrimary: Colors.white,
                ),
                child: Text('Color'),
                onPressed: () {},
              ),
              SizedBox(width: 150),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 30),
                  primary: primaryColor,
                  onPrimary: Colors.white,
                ),
                child: Text('Size'),
                onPressed: () {},
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              onPrimary: Colors.white,
            ),
            child: Text('{quantity}'),
            onPressed: () {},
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(180, 30),
              primary: Colors.grey,
              onPrimary: Colors.white,
            ),
            child: Text('Add To Bag'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
