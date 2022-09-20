import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;

  NeuBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5,5) //bottom right corner
            ),

            BoxShadow(
                color: Colors.white,
                blurRadius: 15,
                offset: Offset(-5,-5) //bottom right corner
            )
          ]

      ),
    );
  }
}
