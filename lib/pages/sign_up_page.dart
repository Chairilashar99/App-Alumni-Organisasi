import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _sliding = 1;

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
                      _sliding = value ?? 1;
                      _sliding == 0
                          ? Navigator.pushNamed(context, '/sign-in')
                          : null;
                    });
                  },
                );
              },
            ),
          ],
        ),
      );
    }

    //Widget Input Nama Lengkap
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 172,
          left: 52,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Lengkap',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
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
                          hintText: 'Masukkan Nama Lengkap',
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

    // Widget Input Nik
    Widget nikInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
          left: 52,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NIK',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
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
                          hintText: 'NIK sesuai KTP',
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

    //Widget Input Alamat
    Widget alamatInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
          left: 52,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
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
                          hintText: 'Masukkan Alamat',
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

    //Widget Input Pekerjaan
    Widget pekerjaanInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
          left: 52,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pekerjaan',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
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
                          hintText: 'Masukkan Pekerjaan',
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

    //Widget Input Tahun Lulus
    Widget tahunLulusInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
          left: 52,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tahun Lulus',
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 42,
              padding: EdgeInsets.symmetric(
                horizontal: 17,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
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
                          hintText: 'Tahun Angkatan',
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

    //Widget SignIn Button
    Widget signUpButton() {
      return Container(
        height: 42,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 64,
          left: 52,
          right: 50,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: secondaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            'Simpan dan Lanjutkan',
            style: buttonTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
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
              nameInput(),
              nikInput(),
              alamatInput(),
              pekerjaanInput(),
              tahunLulusInput(),
              Spacer(),
              signUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
