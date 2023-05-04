import 'package:flutter/material.dart';
import '../../../Constants/constants.dart';

class SigUpAndLoginWithMobile extends StatelessWidget {
  const SigUpAndLoginWithMobile({
    super.key, required this.contentText, required this.linkText,
  });

  final String contentText, linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          contentText,
          style: mediumText,
        ),
        TextButton(
          style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
          onPressed: () {},
          child: Text(
            linkText,
            style: TextStyle(
              fontSize: 16,
              color: greyColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: greyColor,
            ),
          ),
        )
      ],
    );
  }
}