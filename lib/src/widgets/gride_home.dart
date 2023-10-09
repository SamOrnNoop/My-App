import 'package:flutter/material.dart';

import '../utils/constraints.dart';

class GrideMenuHomeWidget extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onPressed;
  const GrideMenuHomeWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Constants.white,
        onPrimary: Constants.baseColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: Constants.borderRadius),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(icon),
              color: Constants.baseColor,
              size: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: const TextStyle(
                    color: Constants.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
    );
  }
}
