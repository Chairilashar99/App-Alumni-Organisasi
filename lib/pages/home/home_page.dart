import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget poster menggunakan Stack
    Widget poster() {
      return Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 58, left: 26, right: 26),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Malam',
                          style: primaryTextStyle,
                        ),
                        Text(
                          'ANDI AGUS SALIM',
                          style: titleTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: extraBold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.cloud_outlined,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 4,
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.5,
                                ),
                                child: Text(
                                  'Cuaca malam ini berawan di sekitar Sengkang ',
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profiles.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 83),
              height: 225,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/image_background.png',
                // fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 169,
                left: 14,
                right: 13,
              ),
              height: 168,
              child: Image.asset('assets/image_poster.png'),
            ),
          ],
        ),
      );
    }

    //Widget Fitur Layanan Title
    Widget fiturLayananTitle() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 17,
                  left: 26,
                ),
                child: Image.asset('assets/icon_fitur.png'),
                height: 12,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  'Fitur & Layanan',
                  style: titleStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    return ListView(
      children: [
        poster(),
        fiturLayananTitle(),
      ],
    );
  }
}
