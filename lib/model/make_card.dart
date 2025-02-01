import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../view/detail_page.dart';

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
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const DetailPage(),
          ),
        );
      },
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
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350] ?? Colors.grey,
                blurRadius: 10,
                offset: const Offset(5, 10),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              image,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
