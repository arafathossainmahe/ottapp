import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/auth_textfield.dart';
import '../widgets/buttons.dart';
import '../widgets/custom _texts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 100,
        title: Text("ZETTA",
            style: TextStyle(
                fontSize: 42, color: Colors.blue, fontWeight: FontWeight.w900)),
      ),
      body: Column(
        children: [
          Column(
            children: [
              AuthTextField(
                  title: 'Your Name',
                  hint: 'Saqib Sizan',
                  textInputType: TextInputType.name),
              AuthTextField(
                  title: 'Email',
                  hint: 'sizan@ottmail.com',
                  textInputType: TextInputType.emailAddress),
              AuthTextField(title: 'Password', hint: '', obscure: true),
              SizedBox(height: 20.h),
              SimpleButton(title: 'Sign Up'),
              SizedBox(height: 20.h),
              Text('OR',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              SizedBox(height: 20.h),
              GoogleButton(),
              SizedBox(height: 8.h),
              FacebookButton(),
              SizedBox(height: 120.h),
              ClickableText(
                  normText: 'Already Have Account? ', clickText: 'Login')
            ],
          ),
        ],
      ),
    );
  }
}
