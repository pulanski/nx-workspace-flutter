import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String cardHeader;
  final String cardContent;
  final double cardWidth;
  final double cardHeight;
  final double cardMargin;
  final double cardPadding;
  final Color cardColor;
  final Color headerColor;
  final Color contentColor;

  const CustomCard({
    Key? key,
    required this.cardHeader, required this.cardContent, required this.cardWidth, required this.cardHeight, required this.cardMargin, required this.cardPadding, required this.cardColor, required this.headerColor, required this.contentColor
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      margin: EdgeInsets.all(cardMargin),
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        color: cardColor,
      ),
      child: Column(
        children: [
          Text(
            cardHeader,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: headerColor,
            ),
          ),
          Text(
            cardContent,
            style: TextStyle(
              fontSize: 20,
              color: contentColor,
            ),
          ),
        ],
      )
    );
  }
}

