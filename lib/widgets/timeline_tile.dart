import 'package:aplikasi_alumni_organisasi/theme.dart';
import 'package:flutter/material.dart';

class TimelineTile extends StatelessWidget {
  const TimelineTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 320,
      margin: EdgeInsets.only(
        left: 43,
        right: 43,
        bottom: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor2,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 12, left: 31),
                height: 48,
                child: Image.asset(
                  'assets/icon_profile_timeline.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SMAN 3 Wajo',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      '32 menit lalu',
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 14, left: 31, right: 37),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo erat eget erat lacinia, sit amet tempor neque pharetra. Proin interdum laoreet magna, sit amet tincidunt dolor imperdiet at. Praesent elit turpis, suscipit hendrerit gravida scelerisque, suscipit volutpat leo. Quisque feugiat egestas suscipit. Integer cursus ligula elit, molestie congue orci accumsan id. Morbi tempus tellus eu metus dapibus consectetur. Etiam consequat pretium magna sed ultricies. Duis varius sed neque at sodales. Cras at sodales tortor. Sed dapibus eleifend interdum. Duis faucibus, orci sit amet tempor rhoncus, magna risus tincidunt justo, in vulputate ipsum magna sit amet lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum vulputate erat mauris, quis varius odio accumsan vitae. Ut sit amet ipsum quis ante porttitor consequat et id dui. Ut at dictum augue. Interdum et malesuada fames ac ante ipsum primis in faucibus.',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 32,
              right: 36,
            ),
            child: Image.asset('assets/image_timeline.png'),
          ),
          SizedBox(
            height: 9,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 26),
            child: Divider(
              color: Color(0xffBCBCBC),
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 39),
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icon_like.png'),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Suka',
                        textAlign: TextAlign.center,
                        style: primaryTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 49),
                  Image.asset('assets/icon_komentar.png'),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      'Komentar',
                      textAlign: TextAlign.center,
                      style: primaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  SizedBox(width: 49),
                  Image.asset('assets/icon_share.png'),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Bagi',
                        textAlign: TextAlign.center,
                        style: primaryTextStyle.copyWith(fontSize: 10),
                        overflow: TextOverflow.ellipsis,
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
}
