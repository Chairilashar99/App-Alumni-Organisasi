import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> layananList = [
  {'title': 'Data Alumni', 'subtitle': 'Database Alumni'},
  {'title': 'Berita & Kegiatan', 'subtitle': 'Kabar terkini seputar alumni'},
  {'title': 'Donasi', 'subtitle': 'Informasi seputar Donasi'},
  {'title': 'Aspirasi', 'subtitle': 'Suara Alumni'},
];

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
                height: 16,
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
              Container(),
            ],
          ),
        ],
      );
    }

    //Widget fitur Layanan
    Widget fiturLayanan() {
      return Container(
        margin: EdgeInsets.only(
          top: 11,
          left: 12,
          right: 12,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(4),
              title: Text(
                layananList[0]['title'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              subtitle: Text(
                layananList[0]['subtitle'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              leading: Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 33),
                  height: 48,
                  child: Image.asset('assets/icon_elipse.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 28),
                  height: 42,
                  child: Image.asset('assets/icon_alumni.png'),
                )
              ]),
              trailing: Container(
                margin: EdgeInsets.only(right: 35),
                height: 11,
                child: Image.asset('assets/icon_arrow.png'),
              ),
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              child: Divider(
                color: Color(0xffE0E0E0),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(4),
              title: Text(
                layananList[1]['title'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              subtitle: Text(
                layananList[1]['subtitle'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              leading: Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 33),
                  height: 48,
                  child: Image.asset('assets/icon_elipse.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 28),
                  height: 42,
                  child: Image.asset('assets/icon_kegiatan.png'),
                )
              ]),
              trailing: Container(
                margin: EdgeInsets.only(right: 35),
                height: 11,
                child: Image.asset('assets/icon_arrow.png'),
              ),
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              child: Divider(
                color: Color(0xffE0E0E0),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(4),
              title: Text(
                layananList[2]['title'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              subtitle: Text(
                layananList[2]['subtitle'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              leading: Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 33),
                  height: 48,
                  child: Image.asset('assets/icon_elipse.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 28),
                  height: 42,
                  child: Image.asset('assets/icon_donasi.png'),
                )
              ]),
              trailing: Container(
                margin: EdgeInsets.only(right: 35),
                height: 11,
                child: Image.asset('assets/icon_arrow.png'),
              ),
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              child: Divider(
                color: Color(0xffE0E0E0),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(4),
              title: Text(
                layananList[3]['title'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              subtitle: Text(
                layananList[3]['subtitle'] ?? '',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              leading: Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 33),
                  height: 48,
                  child: Image.asset('assets/icon_elipse.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 28),
                  height: 42,
                  child: Image.asset('assets/icon_aspirasi.png'),
                )
              ]),
              trailing: Container(
                margin: EdgeInsets.only(right: 35),
                height: 11,
                child: Image.asset('assets/icon_arrow.png'),
              ),
              onTap: () {},
            ),
          ],
        ),
      );
    }

    //Widget Pengumuman Title
    Widget pengumumanTitle() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 21,
              left: 26,
            ),
            child: Row(
              children: [
                Container(
                  height: 16,
                  child: Image.asset('assets/icon_pengumuman.png'),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Pengumuman',
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 21,
              right: 26,
            ),
            child: Text(
              'Lihat semua',
            ),
          ),
        ],
      );
    }

    return ListView(
      children: [
        poster(),
        fiturLayananTitle(),
        fiturLayanan(),
        pengumumanTitle(),
      ],
    );
  }
}
