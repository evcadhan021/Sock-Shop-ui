import 'package:flutter/material.dart';

class MakeCard extends StatelessWidget {
  final dynamic context;
  final Color startColor;
  final Color endColor;
  final String image;
  const MakeCard({
    super.key,
    required this.context,
    required this.startColor,
    required this.endColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                startColor,
                endColor,
              ],
              begin: Alignment.topLeft,
            ),
          ),
        ),
      ),
    );
  }
}
