import 'package:flutter/material.dart';

class DividerVertical extends StatelessWidget {
  const DividerVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: 0.5,
      decoration: const BoxDecoration(color: Colors.black),
    );
  }
}
