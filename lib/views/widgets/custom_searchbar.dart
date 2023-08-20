import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSearchBar extends StatelessWidget {
  final String hintText;
  const CustomSearchBar({required this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50.h,
      decoration: ShapeDecoration(
        gradient:
        LinearGradient(colors: [Colors.black54, Colors.grey.shade900]),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
      ),
      child: Center(
        child: TextField(
          cursorColor: Colors.grey,
          style: const TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            prefixIcon: const Icon(CupertinoIcons.search),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey,fontSize: 18.sp),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
