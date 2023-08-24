import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton(
      {super.key, required this.title, this.image = '', this.scale = 0.1});

  final String title;
  final String image;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            width: 330.w,
            height: 42.h,
            decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.lightBlue, Colors.indigo],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: image == ''
                ? Center(
                    child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  ))
                : Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(image, scale: scale),
                    SizedBox(width: 5.w),
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400),
                    )
                  ])));
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 330.w,
          height: 43.h,
          decoration: ShapeDecoration(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: ButtonElements(
              title: 'Sign Up with Google',
              logo: 'assets/images/google_logo.png',
              logoScale: 2)),
    );
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: 330.w,
          height: 43.h,
          decoration: ShapeDecoration(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: ButtonElements(
              title: 'Sign Up with Facebook',
              logo: 'assets/images/facebook_logo.png',
              logoScale: 3.5)),
    );
  }
}

class ButtonElements extends StatelessWidget {
  ButtonElements(
      {super.key,
      required this.title,
      required this.logo,
      required this.logoScale});

  String title;
  String logo;
  double logoScale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 43.w,
          height: 41.h,
          margin: EdgeInsets.all(2),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          child: Image.asset(logo, scale: logoScale),
        ),
        SizedBox(width: 59.w),
        Text(title,
            style: TextStyle(
                color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500))
      ],
    );
  }
}
