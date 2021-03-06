class Product {
  String _name;
  int _adminId;
  int _price;
  int _productId;
  bool _isEvent;
  String _categoryId;
  bool _freeShipping;
  bool _isPromotion;
  int _promotionPercent;
  int _finalPrice;
  int _orderCount;
  String _imgUrl;
  int _shopId;
  String _shopName;
  String _shopWarehouseCity;
  double _percentStar;
  int _countRating;

  String get name => _name;
  int get adminId => _adminId;
  int get price => _price;
  int get productId => _productId;
  bool get isEvent => _isEvent;
  String get categoryId => _categoryId;
  bool get freeShipping => _freeShipping;
  bool get isPromotion => _isPromotion;
  int get promotionPercent => _promotionPercent;
  int get finalPrice => _finalPrice;
  int get orderCount => _orderCount;
  String get imgUrl => _imgUrl;
  int get shopId => _shopId;
  String get shopName => _shopName;
  String get shopWarehouseCity => _shopWarehouseCity;
  double get percentStar => _percentStar;
  int get countRating => _countRating;

  Product({
      String name, 
      int adminId, 
      int price, 
      int productId, 
      bool isEvent, 
      String categoryId, 
      bool freeShipping, 
      bool isPromotion, 
      int promotionPercent, 
      int finalPrice, 
      int orderCount, 
      String imgUrl, 
      int shopId, 
      String shopName, 
      String shopWarehouseCity, 
      double percentStar, 
      int countRating}){
    _name = name;
    _adminId = adminId;
    _price = price;
    _productId = productId;
    _isEvent = isEvent;
    _categoryId = categoryId;
    _freeShipping = freeShipping;
    _isPromotion = isPromotion;
    _promotionPercent = promotionPercent;
    _finalPrice = finalPrice;
    _orderCount = orderCount;
    _imgUrl = imgUrl;
    _shopId = shopId;
    _shopName = shopName;
    _shopWarehouseCity = shopWarehouseCity;
    _percentStar = percentStar;
    _countRating = countRating;
}

  Product.fromJson(dynamic json) {
    _name = json["name"];
    _adminId = json["adminId"];
    _price = json["price"].toInt();
    _productId = json["product_id"];
    _isEvent = json["is_event"];
    _categoryId = json["category_id"];
    _freeShipping = json["free_shipping"] ==0? false : json["free_shipping"];
    _isPromotion = json["is_promotion"] ==0? false :json["is_promotion"];
    _promotionPercent = json["promotion_percent"];
    _finalPrice = json["final_price"].toInt();
    _orderCount = json["order_count"];
    _imgUrl = json["img_url"];
    _shopId = json["shop_id"];
    _shopName = json["shop_name"];
    _shopWarehouseCity = json["shop_warehouse_city"];
    _percentStar = json["percent_star"].toDouble();
    _countRating = json["count_rating"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["adminId"] = _adminId;
    map["price"] = _price;
    map["product_id"] = _productId;
    map["is_event"] = _isEvent;
    map["category_id"] = _categoryId;
    map["free_shipping"] = _freeShipping;
    map["is_promotion"] = _isPromotion;
    map["promotion_percent"] = _promotionPercent;
    map["final_price"] = _finalPrice;
    map["order_count"] = _orderCount;
    map["img_url"] = _imgUrl;
    map["shop_id"] = _shopId;
    map["shop_name"] = _shopName;
    map["shop_warehouse_city"] = _shopWarehouseCity;
    map["percent_star"] = _percentStar;
    map["count_rating"] = _countRating;
    return map;
  }

}