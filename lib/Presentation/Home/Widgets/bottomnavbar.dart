import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../Constants/constants.dart';
import '../../Create Post/create_post.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: greyColor,
              showSelectedLabels: false,
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                BlocProvider.of<HomeBloc>(context)
                    .add(UpdateIndex(newIndex: value));

                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(5)),
                                height: 3,
                                width: 30,
                              ),
                            ),
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.close_rounded,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  'Create post',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                            ListTile(
                              onTap: () {
                                BlocProvider.of<HomeBloc>(context)
                                    .add(const PickImage(image: null));
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const CreatePost();
                                }));
                              },
                              leading: const Icon(Iconsax.edit),
                              title: const Align(
                                  alignment: Alignment(-1.3, 0),
                                  child: Text('What would you like to talk?')),
                              contentPadding: const EdgeInsets.only(left: 8),
                            ),
                            const ListTile(
                                leading: Icon(Iconsax.gallery),
                                title: Align(
                                    alignment: Alignment(-1.2, 0),
                                    child: Text('Add a photo')),
                                contentPadding: EdgeInsets.only(left: 8))
                          ],
                        ),
                      );
                    });
              },
              items: [
                const BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Iconsax.home_15,
                    )),
                const BottomNavigationBarItem(
                    label: '', icon: Icon(Icons.badge)),
                const BottomNavigationBarItem(
                    label: '', icon: Icon(Iconsax.additem4)),
                const BottomNavigationBarItem(
                    label: '',
                    icon: Icon(
                      Iconsax.game,
                    )),
                BottomNavigationBarItem(
                    label: '',
                    icon: Image.asset('assets/images/Rectangle 271.png')),
              ]);
        },
      ),
    );
  }
}