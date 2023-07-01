import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget Header
    Widget header() {
      return Container(
        width: 138,
        height: 34,
        margin: EdgeInsets.only(
          top: 84,
          left: 138,
          right: 138,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor2,
        ),
        child: FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 47,
                  vertical: 10,
                ),
                child: Text(
                  'PROFIL',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
    }

    //Widget body
    Widget body() {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 49,
              left: 30,
              right: 25,
            ),
            height: 207,
            child: Image.asset(
              'assets/image_background.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 153,
              left: 54,
              right: 48,
            ),
            height: 180,
            child: Stack(
              children: [
                Image.asset(
                  'assets/background_profile.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 61, left: 28, right: 160),
                      child: Text(
                        'ANDI AGUS Salim',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 28, right: 138),
                      child: Text(
                        'Alumni SMA Negeri 2 Sengkang',
                        style: primaryTextStyle.copyWith(
                          fontSize: 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 29,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 28,
                      ),
                      child: Text(
                        'Angkatan 2011',
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: primaryTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 48,
                  right: 39,
                  child: Container(
                    width: 57,
                    height: 79,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image_profil.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    //Widget footer
    Widget footer() {
      return Container(
        margin: EdgeInsets.only(
          top: 22,
          left: 40,
          right: 69,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Anda terdaftar sebagai anggota IKASMADA/IKASTIWA',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: primaryTextStyle.copyWith(
                fontSize: 10,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        body(),
        footer(),
      ],
    );
  }
}
