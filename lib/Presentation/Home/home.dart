import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'Widgets/bottomnavbar.dart';
import 'Widgets/suggetions.dart';
import 'Widgets/user_post_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 229, 223, 1),
      appBar: homeAppBar(),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: const [
            UserPostContainer(
              postContent:
                  'Turn your dream of working in a US, a reality! With a 96% visa acceptance rate, @first kind Miles of its kind “Global Tamil #Startup ...see more',
              postImage: 'assets/images/Rectangle 281.png',
            ),
            UserPostContainer(
              postContent:
                  'Turn your dream of working in a US, a reality! With a 96% visa acceptance rate, @first kind Miles of its kind “Global Tamil #Startup ...see more',
            ),
            SuggestionsForYou(),
            UserPostContainer(
                postContent:
                    'Turn your dream of working in a US, a reality! With a 96% visa acceptance rate, @first kind Miles of its kind “Global Tamil #Startup ...see more')
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Badge(
          label: Text('4'),
          child: Icon(
            Iconsax.notification,
            color: Colors.black,
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            )),
        Badge(
            label: const Text('4'),
            alignment: const AlignmentDirectional(25, 7),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.message,
                  color: Colors.black,
                ))),
      ],
    );
  }
}
