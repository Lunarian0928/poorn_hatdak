import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> snsLinkData = [
      {
        'name': 'Facebook',
        'url': 'https://ko-kr.facebook.com/',
      },
      {
        'name': 'Instagram',
        'url': 'https://www.instagram.com/',
      },
      {
        'name': 'Twitter',
        'url': 'https://twitter.com/?lang=ko',
      },
      {
        'name': 'Kakaotalk',
        'url':
            'https://play.google.com/store/apps/details?id=com.kakao.talk&hl=ko&gl=US',
      },
      {
        'name': 'YouTube',
        'url': 'https://www.youtube.com/',
      },
    ];
    List<String> textData = [
      '회사소개',
      '공지사항',
      '이용약관',
      '개인정보처리방침',
    ];
    int textDataSize = textData.length;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF757575).withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '고객센터',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF212121),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.phone,
                size: 20,
                color: Color(0xFF212121),
              ),
              Text(
                '02-1234-5678',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF212121),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            '평일 09:00 ~ 18:00 (점심 12:00 ~ 13:00)\n주말 공휴일 휴무',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xFF757575).withOpacity(0.8),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < textDataSize; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          textData[i],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: (i != textDataSize - 1)
                                ? FontWeight.w500
                                : FontWeight.w700,
                            color: const Color(0xFF757575),
                          ),
                        ),
                      ),
                      if (i != textDataSize - 1)
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 16.0,
                          ),
                          child: VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Color(0xFFBDBDBD),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '(주)푸른햇닭 사업자정보확인',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF757575),
                ),
              ),
              Icon(
                Icons.expand_more,
                size: 24,
                color: Color(0xFF757575),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < snsLinkData.length; i++)
                SNSLinkBtn(
                  name: snsLinkData[i]['name']!,
                  url: snsLinkData[i]['url']!,
                ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '©푸른햇닭 All rights reserved.',
            style: TextStyle(
              fontSize: 10,
              color: const Color(0xFF757575).withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}

class SNSLinkBtn extends StatefulWidget {
  final String name;
  final String url;
  const SNSLinkBtn({
    super.key,
    required this.name,
    required this.url,
  });

  @override
  State<SNSLinkBtn> createState() => _SNSLinkBtnState();
}

class _SNSLinkBtnState extends State<SNSLinkBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color(
          0xFF757575,
        ),
      ),
      child: IconButton(
        iconSize: 16,
        onPressed: () async {
          if (await canLaunchUrlString(widget.url)) {
            await launchUrlString(widget.url);
          }
        },
        icon: SvgPicture.asset(
          'assets/icon/company_logo/${widget.name}.svg',
        ),
      ),
    );
  }
}
