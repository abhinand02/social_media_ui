import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_media_ui/Presentation/Home/Widgets/reaction_buttons.dart';
import '../../../Constants/constants.dart';

class UserPostContainer extends StatelessWidget {
  const UserPostContainer({
    super.key,
    required this.postContent,
    this.postImage,
  });

  final String postContent;
  final String? postImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(
          color: whiteClr, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Image(
              image: AssetImage(
                'assets/images/Rectangle 286.png',
              ),
              height: 90,
              fit: BoxFit.contain,
            ),
            title: Text(
              'Miles Education',
              style: mediumBoldText,
            ),
            subtitle: Row(
              children: [
                Text(
                  '●  ',
                  style: mediumBoldText,
                ),
                const Icon(
                  Icons.access_time,
                  size: 15,
                ),
                const Text(' 1day ago'),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(225, 232, 237, 1),
                    side: const BorderSide(style: BorderStyle.none),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Boost',
                      style: mediumBoldText,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(postContent),
          ),
          postImage != null
              ? Image(
                  image: AssetImage(postImage!),
                  fit: BoxFit.contain,
                  width: double.infinity,
                )
              : const SizedBox(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // alignment: Alignment.topLeft,
              children: [
                Row(
                  children: [
                    const Image(
                        image: AssetImage('assets/images/Rectangle 365.png')),
                    Text(
                      '99.5K Likes',
                      style: normalGreyText,
                    ),
                  ],
                ),
                // Image(image: AssetImage('assets/images/Rectangle 365.png')),
                // Image(image: AssetImage('assets/images/Rectangle 365.png')),

                Text(
                  '99.5K Kudos   567 views',
                  style: normalGreyText,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const[
              ReactionButtons(
                icon: Icons.star_border,
                title: ' Like',
              ),
              ReactionButtons(
                icon: Iconsax.message,
                title: ' Kudos',
              ),
              ReactionButtons(
                icon: Iconsax.send_2,
                title: ' Send',
              )
            ],
          )
        ],
      ),
    );
  }
}