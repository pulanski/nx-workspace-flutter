import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Square extends StatelessWidget {
  final Color color;
  final double size;
  const Square({
    Key? key,
    this.color = Colors.green,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.grey,
        ),
        color: color,
      ),
      child: const Icon(
        FontAwesomeIcons.solidHeart,
        color: Colors.white,
        semanticLabel: 'Heart',
      ),
    );
  }
}
