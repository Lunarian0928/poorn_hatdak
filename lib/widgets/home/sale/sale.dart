import '../../../classes/card/card_slide.dart';

class Sale extends CardSlide {
  const Sale({
    super.key,
    super.saleType = 'basic',
    super.saleThemeName = '',
    required super.headerTitle,
  });
}
