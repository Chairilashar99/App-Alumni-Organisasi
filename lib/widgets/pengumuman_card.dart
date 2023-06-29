import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

class PengumumanCard extends StatelessWidget {
  const PengumumanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262,
      height: 221,
      margin: EdgeInsets.only(right: 8, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/image_pengumuman.png',
            width: 262,
            height: 124,
          ),
          Container(
            margin: EdgeInsets.only(top: 8, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Sengkang • 22/7/2023',
                  style: titleDateStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Launching Aplikasi Alumni',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Peresmian peluncuran aplikasi banjarbaru juara berlangsung dengan meriah,',
                  style: TextStyle(
                    color: Color(0xff4F4F4F),
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
