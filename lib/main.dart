import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_ui/Application/Home/home_bloc.dart';
import 'package:social_media_ui/Constants/constants.dart';
import 'package:social_media_ui/Presentation/Login/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomeBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Login(),
        title: 'Social Media App',
        theme: ThemeData(
          fontFamily: 'Roboto-Regular',
          appBarTheme: AppBarTheme(
            backgroundColor: whiteClr,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
