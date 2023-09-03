class Detail {
  final String itemName,
      waysToKeep,
      foodType,
      expirationDate,
      itemNumber,
      rawMaterial,
      packingMaterial,
      customerCenterTel,
      returnAndExchange,
      manufacturer;
  final int contents;
  final List<String> noticeData;

  const Detail({
    required this.itemName,
    required this.contents,
    required this.waysToKeep,
    required this.foodType,
    required this.expirationDate,
    required this.itemNumber,
    required this.rawMaterial,
    required this.packingMaterial,
    required this.customerCenterTel,
    required this.returnAndExchange,
    required this.manufacturer,
    required this.noticeData,
  });

  String getItemName() {
    return itemName;
  }

  int getContents() {
    return contents;
  }

  String getWaysToKeep() {
    return waysToKeep;
  }

  String getFoodType() {
    return foodType;
  }

  String getExpirationDate() {
    return expirationDate;
  }

  String getItemNumber() {
    return itemNumber;
  }

  String getRawMaterial() {
    return rawMaterial;
  }

  String getPackingMaterial() {
    return packingMaterial;
  }

  String getCustomerCenterTel() {
    return customerCenterTel;
  }

  String getReturnAndExchange() {
    return returnAndExchange;
  }

  String getManufacturer() {
    return manufacturer;
  }

  List<String> getNoticeData() {
    return noticeData;
  }
}
