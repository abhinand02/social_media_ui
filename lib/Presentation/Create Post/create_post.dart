import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_ui/Constants/constants.dart';
import '../../Application/Home/home_bloc.dart';
import 'Widgets/cam_and_gallery.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'assets/images/Rectangle 169.png',
              fit: BoxFit.contain,
            ),
            title: Text(
              'Mohan Raja',
              style: largeText,
            ),
            subtitle: Text(
              'MeNeM ID',
              style: normalGreyText,
            ),
          ),
          TextBox(),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.image != null
                  ? PostImage(width: width,data: state.image!, )
                  : const SizedBox();
            },
          )
        ],
      ),
      bottomSheet: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.image == null
              ? const CamAndGallery()
              : const SizedBox();
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      titleTextStyle: largeText,
      elevation: 1,
      title: const Text(
        'Create post',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(10),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: state.image == null ? const Color.fromRGBO(225, 232, 237, 1) : Colors.yellow,
                  side: const BorderSide(style: BorderStyle.none),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    'Post',
                    style: mediumBoldText,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}



class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    required this.width, required this.data,
  });
  final Uint8List? data;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        height: width,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.memory(
                  data!,
                  fit: BoxFit.cover,
                )),
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 65,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(0, 0, 0, .5)),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          size: 20,
                        ),
                        padding: EdgeInsets.zero,
                        splashRadius: 5,
                        constraints: BoxConstraints(),
                        color: whiteClr,
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context).add(const PickImage(image: null));
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 20,
                        ),
                        padding: EdgeInsets.zero,
                        splashRadius: 5,
                        constraints: const BoxConstraints(),
                        color: whiteClr,
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'What you think?',
          labelStyle: normalGreyText,
          border: InputBorder.none),
      maxLines: 15,
      maxLength: 2000,
    );
  }
}

Future<Uint8List?> imagePcik(ImageSource source) async {
  final image = await ImagePicker().pickImage(
    source: source,
  );
  if (image == null) {
    return null;
  }
  final temp = await image.readAsBytes();
  return temp;

  // print('printing file format image  $temp');
}
