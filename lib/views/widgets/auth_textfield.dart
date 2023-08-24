import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField(
      {super.key,
      required this.title,
      required this.hint,
      this.obscure = false,
      this.textInputType = TextInputType.text});

  String title;
  String hint;
  bool obscure;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10.h),
          Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
          SizedBox(height: 5.h),
          TextField(
              style: TextStyle(fontSize: 20.sp, color: Colors.white),
              obscureText: obscure,
              obscuringCharacter: '*',
              keyboardType: textInputType,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade800,
                  hintText: hint,
                  hintStyle: TextStyle(fontSize: 18.sp, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 4, color: Colors.blue),
                  )))
        ]));
  }
}
