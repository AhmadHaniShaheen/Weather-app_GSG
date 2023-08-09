
import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  final Widget widget;
  const BlurContainer({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 9.0,
          ),
        ],
      ),
      child: widget,
    );
  }
}
