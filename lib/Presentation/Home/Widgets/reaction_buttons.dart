import 'package:flutter/material.dart';
import '../../../Constants/constants.dart';

class ReactionButtons extends StatelessWidget {
  const ReactionButtons({
    super.key,
    required this.icon,
    required this.title,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              icon,
              color: greyColor,
              size: 20,
            ),
            Text(
              title,
              style: mediumGreyBoldText,
            )
          ],
        ));
  }
}