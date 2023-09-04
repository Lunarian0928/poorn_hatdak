import 'package:flutter_application/classes/ingredient.dart';

import 'nutrient.dart';
import 'product.dart';

class SaleTheme {
  final String themeName;

  SaleTheme({this.themeName = ''});

  String getThemeName() {
    return themeName;
  }

  List<Product> getThemeItems() {
    switch (getThemeName()) {
      case 'bread':
        return [
          Product(
            imgName: 'roast_chicken_sandwich',
            itemName: '로스트 치킨 샌드위치',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 395,
              carbohydrate: 41,
              sugars: 7,
              protein: 15,
              fat: 19,
              saturatedFat: 3,
              transFat: 0,
              cholesterol: 50,
              natrium: 940,
            ),
            title: '샌드위치 시리즈',
            subtitle: '부드러운 식빵 속 든든한 고기',
            body: '다채로운 맛과 식감을 즐길 수 있는\n다양한 식재료가 들어있어요.',
            body1: '조리하지 마시고, 바로 드셔주세요.\n차가울 때 더욱 신선하고 맛있답니다.',
            body2: '바쁜 아침 식사대용으로도,\n아이들 영양간식으로도 간편하게 즐겨보세요.',
            ingredientData: [
              const Ingredient(
                imgName: 'mini_baguette',
                name: '미니 바게트',
              ),
              const Ingredient(
                imgName: 'roasted_chicken_breast',
                name: '구운 닭가슴살',
              ),
              const Ingredient(
                imgName: 'onion',
                name: '양파',
              ),
              const Ingredient(
                imgName: 'cucumber',
                name: '오이',
              ),
            ],
          ),
          Product(
            imgName: 'roast_chicken_wrap',
            itemName: '로스트 치킨 랩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 441,
              carbohydrate: 42.0,
              sugars: 8.3,
              protein: 20.3,
              fat: 21.3,
              saturatedFat: 5,
              transFat: 0,
              cholesterol: 58,
              natrium: 1816,
            ),
            title: '치킨 랩 시리즈',
            subtitle: '간편하지만 만족스러운',
            body: '치킨과 신선한 채소에 특수 잎채소까지 더했습니다.',
            body1: '그대로 즐길 수 있는 샐러드 랩입니다.\n전자레인지에 40초 데워드셔도 좋아요.',
            body2: '별도로 준비된 스위트 칠리소스나 시저 소스 등을\n콕 찍어서 먹어도 좋아요.',
            ingredientData: [
              const Ingredient(
                imgName: 'tortilla',
                name: '또띠아',
              ),
              const Ingredient(
                imgName: 'roasted_chicken_breast',
                name: '구운 닭가슴살',
              ),
              const Ingredient(
                imgName: 'lettuce',
                name: '양상추',
              ),
              const Ingredient(
                imgName: 'onion',
                name: '양파',
              ),
              const Ingredient(
                imgName: 'red_onion',
                name: '적양파',
              ),
              const Ingredient(
                imgName: 'corn',
                name: '옥수수',
              ),
            ],
          ),
          Product(
            imgName: 'crispy_chicken_wrap',
            itemName: '크리스피 치킨 랩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 441,
              carbohydrate: 42.0,
              sugars: 8.3,
              protein: 20.3,
              fat: 21.3,
              saturatedFat: 8.6,
              transFat: 0,
              cholesterol: 59.8,
              natrium: 1023.8,
            ),
            title: '치킨 랩 시리즈',
            subtitle: '간편하지만 만족스러운',
            body: '치킨과 신선한 채소에 특수 잎채소까지 더했습니다.',
            body1: '그대로 즐길 수 있는 샐러드 랩입니다.\n전자레인지에 40초 데워드셔도 좋아요.',
            body2: '별도로 준비된 스위트 칠리소스나 시저 소스 등을\n콕 찍어서 먹어도 좋아요.',
            ingredientData: [
              const Ingredient(
                imgName: 'tortilla',
                name: '또띠아',
              ),
              const Ingredient(
                imgName: 'fried_chicken',
                name: '후라이드 치킨',
              ),
              const Ingredient(
                imgName: 'lettuce',
                name: '양상추',
              ),
              const Ingredient(
                imgName: 'onion',
                name: '양파',
              ),
              const Ingredient(
                imgName: 'garlic',
                name: '마늘',
              ),
            ],
          ),
        ];
      case 'salad':
        return [
          Product(
            imgName: 'mushroom_salad',
            itemName: '버섯 샐러드 야채팩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 99,
              carbohydrate: 11.5,
              sugars: 5.1,
              protein: 2.7,
              fat: 5.5,
              saturatedFat: 0.8,
              transFat: 0.0,
              cholesterol: 4.0,
              natrium: 224.0,
            ),
            title: '샐러드 야채팩 시리즈',
            subtitle: '손질 걱정없이 간편하게 즐기는',
            body: '먹기 좋게 하나하나 손질한 다양한 채소를 만나보세요.',
            body1: '진공포장으로 산지의 신선함을 그대로 느낄 수 있어요.',
            body2: '원하는 토핑과 소스만 넣으면 나만의 맛있는 샐러드를 만들 수 있어요.',
            ingredientData: [
              const Ingredient(
                imgName: 'button_mushroom',
                name: '양송이 버섯',
              ),
              const Ingredient(
                imgName: 'lettuce',
                name: '양상추',
              ),
              const Ingredient(
                imgName: 'cucumber',
                name: '오이',
              ),
              const Ingredient(
                imgName: 'red_onion',
                name: '적양파',
              ),
              const Ingredient(
                imgName: 'tomato',
                name: '토마토',
              ),
              const Ingredient(
                imgName: 'black_olive',
                name: '블랙 올리브',
              ),
            ],
          ),
          Product(
            imgName: 'cucumber_salad',
            itemName: '오이 샐러드 야채팩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 231,
              carbohydrate: 17.0,
              sugars: 1.0,
              protein: 8.0,
              fat: 15.0,
              saturatedFat: 2.4,
              transFat: 0.0,
              cholesterol: 15.0,
              natrium: 796.0,
            ),
            title: '샐러드 야채팩 시리즈',
            subtitle: '손질 걱정없이 간편하게 즐기는',
            body: '먹기 좋게 하나하나 손질한 다양한 채소를 만나보세요.',
            body1: '진공포장으로 산지의 신선함을 그대로 느낄 수 있어요.',
            body2: '원하는 토핑과 소스만 넣으면 나만의 맛있는 샐러드를 만들 수 있어요.',
            ingredientData: [
              const Ingredient(
                imgName: 'cucumber',
                name: '오이',
              ),
              const Ingredient(
                imgName: 'red_onion',
                name: '적양파',
              ),
              const Ingredient(
                imgName: 'kale',
                name: '케일',
              ),
              const Ingredient(
                imgName: 'cherry_tomato',
                name: '방울 토마토',
              ),
              const Ingredient(
                imgName: 'pomegranate',
                name: '석류',
              ),
              const Ingredient(
                imgName: 'cashew_nut',
                name: '캐슈너트',
              ),
            ],
          ),
          Product(
            imgName: 'ricotta_cheese_salad',
            itemName: '리코타 치즈 샐러드 야채팩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 155,
              carbohydrate: 8.5,
              sugars: 4.9,
              protein: 7.3,
              fat: 10.6,
              saturatedFat: 5.3,
              transFat: 0.0,
              cholesterol: 32.0,
              natrium: 258.0,
            ),
            title: '샐러드 야채팩 시리즈',
            subtitle: '손질 걱정없이 간편하게 즐기는',
            body: '먹기 좋게 하나하나 손질한 다양한 채소를 만나보세요.',
            body1: '진공포장으로 산지의 신선함을 그대로 느낄 수 있어요.',
            body2: '원하는 토핑과 소스만 넣으면 나만의 맛있는 샐러드를 만들 수 있어요.',
            ingredientData: [
              const Ingredient(
                imgName: 'ricotta_cheese',
                name: '리코타 치즈',
              ),
              const Ingredient(
                imgName: 'lettuce',
                name: '양상추',
              ),
              const Ingredient(
                imgName: 'cherry_tomato',
                name: '방울 토마토',
              ),
              const Ingredient(
                imgName: 'walnut',
                name: '호두',
              ),
              const Ingredient(
                imgName: 'sesame',
                name: '참깨',
              ),
            ],
          ),
          Product(
            imgName: 'avocado_salad',
            itemName: '아보카도 샐러드 야채팩',
            reviewScore: 4.0,
            reviewNum: 324,
            price: 4000,
            nutrient: Nutrient(
              calorie: 260,
              carbohydrate: 30.0,
              sugars: 21.0,
              protein: 5.0,
              fat: 5.0,
              saturatedFat: 2.0,
              transFat: 0.5,
              cholesterol: 10.0,
              natrium: 1080.0,
            ),
            title: '샐러드 야채팩 시리즈',
            subtitle: '손질 걱정없이 간편하게 즐기는',
            body: '먹기 좋게 하나하나 손질한 다양한 채소를 만나보세요.',
            body1: '진공포장으로 산지의 신선함을 그대로 느낄 수 있어요.',
            body2: '원하는 토핑과 소스만 넣으면 나만의 맛있는 샐러드를 만들 수 있어요.',
            ingredientData: [
              const Ingredient(
                imgName: 'avocado',
                name: '아보카도',
              ),
              const Ingredient(
                imgName: 'chicory',
                name: '치커리',
              ),
              const Ingredient(
                imgName: 'red_onion',
                name: '적양파',
              ),
              const Ingredient(
                imgName: 'cherry_tomato',
                name: '방울 토마토',
              ),
            ],
          ),
        ];
      default:
        return [
          for (int i = 0; i < 5; i++)
            Product(
              imgName: 'baeksuk',
              itemName: '영양듬뿍 한방백숙',
              reviewScore: 4.0,
              reviewNum: 324,
              price: 4000,
              nutrient: Nutrient(
                calorie: 360,
                carbohydrate: 17,
                sugars: 6,
                protein: 23,
                fat: 20,
                saturatedFat: 5,
                transFat: 0,
                cholesterol: 58,
                natrium: 1816,
              ),
              title: '영양듬뿍 한방 백숙',
              subtitle: '깊고 진한 닭한마리 백숙',
              body1: '맛과 영양을 더하기 위해 엄나무, 옻나무, 황기, 헛개나무 등\n신선한 한방재료를 가득 담았어요.',
              body2: '밥, 칼국수 등 취향에 맞는 재료를 추가해\n더욱 맛있고 푸짐하게 즐겨보세요.',
              ingredientData: [
                const Ingredient(
                  imgName: 'chicken',
                  name: '백숙용 닭고기',
                ),
                const Ingredient(
                  imgName: 'chicken_stock',
                  name: '치킨 스톡',
                ),
                const Ingredient(
                  imgName: 'tea_bag',
                  name: '한방 티백',
                ),
                const Ingredient(
                  imgName: 'green_onion',
                  name: '대파',
                  price: 500,
                ),
                const Ingredient(
                  imgName: 'garlic',
                  name: '마늘',
                  price: 500,
                ),
                const Ingredient(
                  imgName: 'chives',
                  name: '부추',
                  price: 500,
                ),
                const Ingredient(
                  imgName: 'potato',
                  name: '감자',
                  price: 500,
                ),
                const Ingredient(
                  imgName: 'ginseng',
                  name: '인삼',
                  price: 500,
                ),
              ],
              recipe: [
                '닭고기를 끓는 물에 약 1~2분간 데쳐주세요',
                '물 1L에 닭고기, 치킨 스톡, 한방 티백을 넣고 20분 끓여주세요',
                '취향에 따라 대파, 마늘, 인삼 등을 넣어 완성해주세요',
              ],
            ),
        ];
    }
  }
}
