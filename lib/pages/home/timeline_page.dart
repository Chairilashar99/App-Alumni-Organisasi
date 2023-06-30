import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:aplikasi_alumni_organisasi/widgets/timeline_tile.dart';
import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget Button Add
    Widget buttonAdd() {
      return Container(
        margin: EdgeInsets.only(
          top: 84,
          left: 138,
          right: 138,
        ),
        height: 40,
        child: ElevatedButton.icon(
          icon: Container(
            height: 20,
            margin: EdgeInsets.only(top: 7, bottom: 7),
            child: Image.asset(
              'assets/icon_add.png',
            ),
          ),
          label: Padding(
            padding: EdgeInsets.only(
              left: 23,
            ),
            child: Text(
              'Tambah',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );
    }

    //Widget Timeline
    Widget timeline() {
      return Container(
        margin: EdgeInsets.only(
          top: 19,
        ),
        child: Column(
          children: [
            Column(
              children: [
                TimelineTile(),
                TimelineTile(),
                TimelineTile(),
              ],
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        buttonAdd(),
        timeline(),
      ],
    );
  }
}
