import 'package:flutter/material.dart';
import '../text_field_gray_border.dart';

class DestinationListTile extends StatelessWidget {
  const DestinationListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color(0xFFBDBDBD),
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '배송지 정보',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF212121),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    value: true,
                    onChanged: (value) {},
                    title: const Text(
                      '주문자 정보와 동일',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '받는분',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF212121),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              SizedBox(
                width: 332.0,
                child: TextFieldGrayBorder(),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                ),
                child: Text(
                  '주소',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              SizedBox(
                width: 332.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Flexible(
                          flex: 1,
                          child: TextFieldGrayBorder(),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 12.0,
                            ),
                            textStyle: const TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          child: const Text(
                            '우편번호 찾기',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const TextFieldGrayBorder(
                        enabled: false, hintText: '기본 주소'),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const TextFieldGrayBorder(hintText: '상세 주소'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '휴대전화',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF212121),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              SizedBox(
                width: 332.0,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextFieldGrayBorder(),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextFieldGrayBorder(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '전화번호',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF212121),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              SizedBox(
                width: 332.0,
                child: TextFieldGrayBorder(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
