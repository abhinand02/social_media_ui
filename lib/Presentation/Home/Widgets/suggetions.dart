import 'package:flutter/material.dart';
import '../../../Constants/constants.dart';

class SuggestionsForYou extends StatelessWidget {
  const SuggestionsForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: whiteClr),
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suggestions for you',
                  style: headingNormalText,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: blueColor),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  width: 130,
                  margin: EdgeInsets.all(8),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/Rectangle 353.png',
                        fit: BoxFit.cover,
                      )),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }
}