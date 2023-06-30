import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  int _sliding = 0;

  @override
  Widget build(BuildContext context) {
    //Widget Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 70,
          left: 76,
          right: 69,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatefulBuilder(
              builder: (context, setState) {
                return CupertinoSlidingSegmentedControl(
                  backgroundColor: Color(0xffB1B5BA),
                  children: {
                    0: Text(
                      'Masuk Akun',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                    ),
                    1: Text(
                      'Buat Akun',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                    ),
                  },
                  groupValue: _sliding,
                  onValueChanged: (int? value) {
                    print(value);
                    setState(() {
                      _sliding = value ?? 0;
                      _sliding == 0
                          ? null
                          : Navigator.pushNamed(context, '/sign-up');
                    });
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    //Widget Image
    Widget imageLogin() {
      return Container(
        margin: EdgeInsets.only(
          top: 79,
          left: 66,
          right: 79,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/imageLogin.png',
                height: 265,
                width: 269,
              ),
            ),
          ],
        ),
      );
    }

    //Widget Email Input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 34,
          left: 62,
          right: 42,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Masukkan email yang telah terdaftar',
              style: primaryTextStyle.copyWith(
                fontSize: 8,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextFormField(
                        autofocus: true,
                        enableInteractiveSelection: true,
                        showCursor: true,
                        cursorColor: inlineColor,
                        style: inlineTextStyle.copyWith(
                          fontSize: 10,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'baco@gmail.com',
                          hintStyle: inlineTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    //Widget Password Input
    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 22,
          left: 62,
          right: 42,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Masukkan email yang telah terdaftar',
              style: primaryTextStyle.copyWith(
                fontSize: 8,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 18,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        enableInteractiveSelection: true,
                        showCursor: true,
                        cursorColor: inlineColor,
                        style: inlineTextStyle.copyWith(
                          fontSize: 10,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'masukkan password',
                          hintStyle: inlineTextStyle.copyWith(
                            fontSize: 10,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            size: 18,
                            color: Color(0xff898C8D),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    //Widget SignIn Button
    Widget signInButton() {
      return Container(
        height: 42,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          left: 59,
          right: 43,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Masuk',
            style: buttonTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ),
      );
    }

    //Widget Footer
    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lupa detail akun anda? ',
              style: primaryTextStyle.copyWith(
                fontSize: 8,
              ),
            ),
            Text(
              'Dapatkan Bantuan',
              style: TextStyle(color: secondaryColor).copyWith(
                fontSize: 8,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              imageLogin(),
              emailInput(),
              passwordInput(),
              Spacer(),
              signInButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
