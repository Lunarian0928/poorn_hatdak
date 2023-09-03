import 'package:flutter/material.dart';
import '../../../classes/detail.dart';
import 'notice_cell.dart';

class DetailTable extends StatelessWidget {
  const DetailTable({super.key});

  @override
  Widget build(BuildContext context) {
    Detail detailData = const Detail(
      itemName: '영양듬뿍 한방 백숙',
      contents: 600,
      waysToKeep: '냉장보관',
      foodType: '간편조리세트',
      expirationDate: '별도표시일까지',
      itemNumber: '01234567890-123',
      rawMaterial: '컨텐츠 참조',
      packingMaterial: '내면: 폴리에틸렌, 폴리프로필렌',
      customerCenterTel: '0123-4567',
      returnAndExchange: '제조원 및 판매원',
      manufacturer: '(주)푸른햇닭 / 서울 강남구 강남대로 364 마왕빌딩 13층',
      noticeData: [
        '본 제품은 알레르기 유발성분(알류, 우유, 메밀, 땅콩, 대두, 밀, 고등어, 게, 새우, 돼지고기, 복숭아, 토마토, 호두, 쇠고기, 오징어, 조개류, 아황산류, 잣)을 사용한 제품과 같은 제조시설에서 제조하고 있습니다',
        '제품은 수령 후 바로 냉장 보관해 주시고, 개봉한 제품은 변질의 우려가 있으니 가능한 빨리 섭취하시기 바랍니다',
        '조리 후 바로 드실 경우 제품과 용기가 뜨거우니 주의하십시오',
        '뼈가 있는 제품이므로 부주의로 인해 치아가 손상되거나 목에 걸리지 않도록 주의하십시오',
        '방습을 위해 흡습포를 사용하였습니다',
        '본 제품은 소비자 분쟁 해결 기준에 의거 교환 또는 보상 받을 수 있습니다',
        '부정 불량식품 신고는 국번없이 1399'
      ],
    );
    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 28.0,
        bottom: 56.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: Color(0xFF212121),
          ),
          bottom: BorderSide(
            width: 2,
            color: Color(0xFF212121),
          ),
        ),
      ),
      child: Wrap(
        children: [
          Cell(
            keyName: '제품명',
            data: detailData.getItemName(),
            topBorder: false,
          ),
          Cell(
            keyName: '내용량',
            data: '${detailData.getContents()}g',
          ),
          Cell(
            keyName: '보관방법',
            data: detailData.getWaysToKeep(),
            widthRatio: 0.5,
            rightBorder: true,
          ),
          Cell(
            keyName: '식품유형',
            data: detailData.getFoodType(),
            widthRatio: 0.5,
          ),
          Cell(
            keyName: '소비기한',
            data: detailData.getExpirationDate(),
            widthRatio: 0.5,
            rightBorder: true,
          ),
          Cell(
            keyName: '품목보고번호',
            data: detailData.getItemNumber(),
            widthRatio: 0.5,
          ),
          Cell(
            keyName: '원재료명 및 함량',
            data: detailData.getRawMaterial(),
          ),
          Cell(
            keyName: '포장재질',
            data: detailData.getPackingMaterial(),
          ),
          Cell(
            keyName: '고객센터',
            data: detailData.getCustomerCenterTel(),
            widthRatio: 0.5,
            rightBorder: true,
          ),
          Cell(
            keyName: '반품 및 교환처',
            data: detailData.getReturnAndExchange(),
            widthRatio: 0.5,
          ),
          Cell(
            keyName: '제조원',
            data: detailData.getManufacturer(),
          ),
          NoticeCell(
            data: detailData.getNoticeData(),
          )
        ],
      ),
    );
  }
}

class Cell extends StatelessWidget {
  final String keyName, data;
  final double widthRatio;
  final bool topBorder, rightBorder;
  const Cell({
    super.key,
    required this.keyName,
    required this.data,
    this.widthRatio = 1.0,
    this.topBorder = true,
    this.rightBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 32) * widthRatio,
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: (topBorder) ? const Color(0xFF212121) : Colors.transparent,
          ),
          right: BorderSide(
            width: 1.0,
            color: (rightBorder) ? const Color(0xFF212121) : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            keyName,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF757575),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            data,
            style: const TextStyle(
              fontSize: 12.0,
              color: Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}
