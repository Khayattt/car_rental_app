import 'package:flutter/material.dart';

class BorderedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double borderWidth;
  final Color borderColor;
  final double borderRadius;
  final double minHeight;

  const BorderedNetworkImage({
    // these are default values
    Key? key,
    required this.imageUrl,
    this.borderWidth = 3.0,
    this.borderColor = Colors.grey,
    this.borderRadius = 16.0,
    this.minHeight = 100.0, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: borderWidth, color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius - borderWidth),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: minHeight,
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}