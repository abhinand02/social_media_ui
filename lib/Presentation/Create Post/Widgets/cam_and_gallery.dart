import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../Constants/constants.dart';
import '../create_post.dart';

class CamAndGallery extends StatelessWidget {
  const CamAndGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(width: .5, color: greyColor)),
        child: Row(
          children: [
            IconButton(
                onPressed: () async {
                  final data = await imagePcik(ImageSource.camera);
                  BlocProvider.of<HomeBloc>(context)
                      .add(PickImage(image: data));
                },
                icon: Icon(Icons.camera_alt_rounded)),
            IconButton(
              onPressed: ()async {
                final data = await imagePcik(ImageSource.gallery);
                  BlocProvider.of<HomeBloc>(context)
                      .add(PickImage(image: data));
              },
              icon: Icon(Icons.photo_library_outlined),
            ),
          ],
        ),
      );
  }
}