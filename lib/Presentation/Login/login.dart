import 'package:flutter/material.dart';
import 'package:social_media_ui/Constants/constants.dart';
import 'Widgets/forgot_password.dart';
import 'Widgets/login_button.dart';
import 'Widgets/signup_and_login_with_mobile.dart';
import 'Widgets/terms_and_conditions.dart';
import 'Widgets/text_form_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(16, 35, 20, 20),
          child: Column(
            // shrinkWrap: true,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Logo.png'),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Login',
                    style: headingNormalText,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const FormTextField(
                    headingText: 'Email Address',
                    hintText: 'yourmail@gmail.com',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormTextField(
                    headingText: 'Password',
                    hintText: '',
                    obscureText: true,
                  ),
                  const ForgotPasswordText(),
                  const LoginButton(),
                  const SigUpAndLoginWithMobile(contentText: 'Didn’t have an account ?', linkText: 'Signup',),
                  const SigUpAndLoginWithMobile(contentText: 'You can also login with', linkText: 'Mobile Number',),
                ],
              ),
              const Terms_And_conditionText(), 
            ],
          ),
        ),
      ),
    );
  }
}






