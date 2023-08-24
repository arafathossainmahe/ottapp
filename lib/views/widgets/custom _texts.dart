import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickableText extends StatelessWidget {
  const ClickableText(
      {super.key, required this.normText, required this.clickText});

  final String normText;
  final String clickText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(normText,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w300,
                color: Colors.white)),
        InkWell(
          onTap: () {},
          child: Text(clickText,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue)),
        ),
      ],
    );
  }
}
