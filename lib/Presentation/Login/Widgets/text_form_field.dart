import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.hintText,
    required this.headingText,
    required this.obscureText,
  });

  final String hintText, headingText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 77, 77, 77),
              fontWeight: FontWeight.bold,
              height: 2),
        ),
        TextFormField(
          cursorHeight: 25,
          obscureText: obscureText,
          decoration: InputDecoration(
            suffixIcon:
                obscureText ? const Icon(Icons.remove_red_eye) : const SizedBox(),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}