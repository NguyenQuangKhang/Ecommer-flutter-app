class ProductDetailed {
  int _id;
  String _name;
  int _price;
  String _description;
  int _weight;
  int _quantity;
  String _sku;
  List<String> _images;
  List<Attribute> _attribute;
  Comments _comments;
  Ratings _ratings;
  Categories _categories;
  int _adminId;
  bool _isEvent;
  String _categoryId;
  bool _isFreeShip;
  bool _isPromotion;
  int _promotionPercent;
  int _finalPrice;
  String _shortDescription;
  bool _isActive;
  bool _shopFreeShipping;
  int _orderCount;
  bool _stockStatus;
  String _skuUser;
  Rating_info _ratingInfo;
  Shop_info _shopInfo;

  int get id => _id;
  String get name => _name;
  int get price => _price;
  String get description => _description;
  int get weight => _weight;
  int get quantity => _quantity;
  String get sku => _sku;
  List<String> get images => _images;
  List<Attribute> get attribute => _attribute;
  Comments get comments => _comments;
  Ratings get ratings => _ratings;
  Categories get categories => _categories;
  int get adminId => _adminId;
  bool get isEvent => _isEvent;
  String get categoryId => _categoryId;
  bool get isFreeShip => _isFreeShip;
  bool get isPromotion => _isPromotion;
  int get promotionPercent => _promotionPercent;
  int get finalPrice => _finalPrice;
  String get shortDescription => _shortDescription;
  bool get isActive => _isActive;
  bool get shopFreeShipping => _shopFreeShipping;
  int get orderCount => _orderCount;
  bool get stockStatus => _stockStatus;
  String get skuUser => _skuUser;
  Rating_info get ratingInfo => _ratingInfo;
  Shop_info get shopInfo => _shopInfo;

  Product_detailed({
      int id, 
      String name, 
      int price, 
      String description, 
      int weight, 
      int quantity, 
      String sku, 
      List<String> images, 
      List<Attribute> attribute, 
      Comments comments, 
      Ratings ratings, 
      Categories categories, 
      int adminId, 
      bool isEvent, 
      String categoryId, 
      bool isFreeShip, 
      bool isPromotion, 
      int promotionPercent, 
      int finalPrice, 
      String shortDescription, 
      bool isActive, 
      bool shopFreeShipping, 
      int orderCount, 
      bool stockStatus, 
      String skuUser, 
      Rating_info ratingInfo, 
      Shop_info shopInfo}){
    _id = id;
    _name = name;
    _price = price;
    _description = description;
    _weight = weight;
    _quantity = quantity;
    _sku = sku;
    _images = images;
    _attribute = attribute;
    _comments = comments;
    _ratings = ratings;
    _categories = categories;
    _adminId = adminId;
    _isEvent = isEvent;
    _categoryId = categoryId;
    _isFreeShip = isFreeShip;
    _isPromotion = isPromotion;
    _promotionPercent = promotionPercent;
    _finalPrice = finalPrice;
    _shortDescription = shortDescription;
    _isActive = isActive;
    _shopFreeShipping = shopFreeShipping;
    _orderCount = orderCount;
    _stockStatus = stockStatus;
    _skuUser = skuUser;
    _ratingInfo = ratingInfo;
    _shopInfo = shopInfo;
}

  ProductDetailed.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _price = json["price"].toInt();
    _description = json["description"];
    _weight = json["weight"];
    _quantity = json["quantity"];
    _sku = json["sku"];
    _images = json["images"] != null ? json["images"].cast<String>() : [];
    if (json["attribute"] != null) {
      _attribute = [];
      json["attribute"].forEach((v) {
        _attribute.add(Attribute.fromJson(v));
      });
    }
    _comments = json["comments"] != null ? Comments.fromJson(json["comments"]) : null;
    _ratings = json["ratings"] != null ? Ratings.fromJson(json["ratings"]) : null;
    _categories = json["categories"] != null ? Categories.fromJson(json["categories"]) : null;
    _adminId = json["admin_id"];
    _isEvent = json["is_event"];
    _categoryId = json["category_id"];
    _isFreeShip = json["is_free_ship"];
    _isPromotion = json["is_promotion"];
    _promotionPercent = json["promotion_percent"];
    _finalPrice = json["final_price"].toInt();
    _shortDescription = json["short_description"];
    _isActive = json["is_active"];
    _shopFreeShipping = json["shop_free_shipping"];
    _orderCount = json["order_count"];
    _stockStatus = json["stock_status"];
    _skuUser = json["sku_user"];
    _ratingInfo = json["rating_info"] != null ? Rating_info.fromJson(json["rating_info"]) : null;
    _shopInfo = json["shop_info"] != null ? Shop_info.fromJson(json["shop_info"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["price"] = _price;
    map["description"] = _description;
    map["weight"] = _weight;
    map["quantity"] = _quantity;
    map["sku"] = _sku;
    map["images"] = _images;
    if (_attribute != null) {
      map["attribute"] = _attribute.map((v) => v.toJson()).toList();
    }
    if (_comments != null) {
      map["comments"] = _comments.toJson();
    }
    if (_ratings != null) {
      map["ratings"] = _ratings.toJson();
    }
    if (_categories != null) {
      map["categories"] = _categories.toJson();
    }
    map["admin_id"] = _adminId;
    map["is_event"] = _isEvent;
    map["category_id"] = _categoryId;
    map["is_free_ship"] = _isFreeShip;
    map["is_promotion"] = _isPromotion;
    map["promotion_percent"] = _promotionPercent;
    map["final_price"] = _finalPrice;
    map["short_description"] = _shortDescription;
    map["is_active"] = _isActive;
    map["shop_free_shipping"] = _shopFreeShipping;
    map["order_count"] = _orderCount;
    map["stock_status"] = _stockStatus;
    map["sku_user"] = _skuUser;
    if (_ratingInfo != null) {
      map["rating_info"] = _ratingInfo.toJson();
    }
    if (_shopInfo != null) {
      map["shop_info"] = _shopInfo.toJson();
    }
    return map;
  }

}

class Shop_info {
  int _score;
  int _shopId;
  int _customerIdOfShop;
  String _shopName;
  String _shopLogo;
  double _goodReviewPercent;
  String _phoneNumber;
  String _shopWarehouseCity;
  bool _isCertified;

  int get score => _score;
  int get shopId => _shopId;
  int get customerIdOfShop => _customerIdOfShop;
  String get shopName => _shopName;
  String get shopLogo => _shopLogo;
  double get goodReviewPercent => _goodReviewPercent;
  String get phoneNumber => _phoneNumber;
  String get shopWarehouseCity => _shopWarehouseCity;
  bool get isCertified => _isCertified;

  Shop_info({
      int score, 
      int shopId, 
      int customerIdOfShop, 
      String shopName, 
      String shopLogo, 
      double goodReviewPercent, 
      String phoneNumber, 
      String shopWarehouseCity, 
      bool isCertified}){
    _score = score;
    _shopId = shopId;
    _customerIdOfShop = customerIdOfShop;
    _shopName = shopName;
    _shopLogo = shopLogo;
    _goodReviewPercent = goodReviewPercent;
    _phoneNumber = phoneNumber;
    _shopWarehouseCity = shopWarehouseCity;
    _isCertified = isCertified;
}

  Shop_info.fromJson(dynamic json) {
    _score = json["score"];
    _shopId = json["shop_id"];
    _customerIdOfShop = json["customer_id_of_shop"];
    _shopName = json["shop_name"];
    _shopLogo = json["shop_logo"];
    _goodReviewPercent = json["good_review_percent"];
    _phoneNumber = json["phone_number"];
    _shopWarehouseCity = json["shop_warehouse_city"];
    _isCertified = json["is_certified"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["score"] = _score;
    map["shop_id"] = _shopId;
    map["customer_id_of_shop"] = _customerIdOfShop;
    map["shop_name"] = _shopName;
    map["shop_logo"] = _shopLogo;
    map["good_review_percent"] = _goodReviewPercent;
    map["phone_number"] = _phoneNumber;
    map["shop_warehouse_city"] = _shopWarehouseCity;
    map["is_certified"] = _isCertified;
    return map;
  }

}

class Rating_info {
  int _star1;
  int _star2;
  int _star3;
  int _star4;
  int _star5;

  int get star1 => _star1;
  int get star2 => _star2;
  int get star3 => _star3;
  int get star4 => _star4;
  int get star5 => _star5;

  Rating_info({
      int star1, 
      int star2, 
      int star3, 
      int star4, 
      int star5}){
    _star1 = star1;
    _star2 = star2;
    _star3 = star3;
    _star4 = star4;
    _star5 = star5;
}

  Rating_info.fromJson(dynamic json) {
    _star1 = json["star1"];
    _star2 = json["star2"];
    _star3 = json["star3"];
    _star4 = json["star4"];
    _star5 = json["star5"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["star1"] = _star1;
    map["star2"] = _star2;
    map["star3"] = _star3;
    map["star4"] = _star4;
    map["star5"] = _star5;
    return map;
  }

}

class Categories {
  int _categoryLevel1Id;
  String _categoryLevel1Name;
  String _categoryLevel1Path;
  int _categoryLevel2Id;
  String _categoryLevel2Name;
  String _categoryLevel2Path;
  int _categoryLevel3Id;
  String _categoryLevel3Name;
  String _categoryLevel3Path;

  int get categoryLevel1Id => _categoryLevel1Id;
  String get categoryLevel1Name => _categoryLevel1Name;
  String get categoryLevel1Path => _categoryLevel1Path;
  int get categoryLevel2Id => _categoryLevel2Id;
  String get categoryLevel2Name => _categoryLevel2Name;
  String get categoryLevel2Path => _categoryLevel2Path;
  int get categoryLevel3Id => _categoryLevel3Id;
  String get categoryLevel3Name => _categoryLevel3Name;
  String get categoryLevel3Path => _categoryLevel3Path;

  Categories({
      int categoryLevel1Id, 
      String categoryLevel1Name, 
      String categoryLevel1Path, 
      int categoryLevel2Id, 
      String categoryLevel2Name, 
      String categoryLevel2Path, 
      int categoryLevel3Id, 
      String categoryLevel3Name, 
      String categoryLevel3Path}){
    _categoryLevel1Id = categoryLevel1Id;
    _categoryLevel1Name = categoryLevel1Name;
    _categoryLevel1Path = categoryLevel1Path;
    _categoryLevel2Id = categoryLevel2Id;
    _categoryLevel2Name = categoryLevel2Name;
    _categoryLevel2Path = categoryLevel2Path;
    _categoryLevel3Id = categoryLevel3Id;
    _categoryLevel3Name = categoryLevel3Name;
    _categoryLevel3Path = categoryLevel3Path;
}

  Categories.fromJson(dynamic json) {
    _categoryLevel1Id = json["category_level1_id"];
    _categoryLevel1Name = json["category_level1_name"];
    _categoryLevel1Path = json["category_level1_path"];
    _categoryLevel2Id = json["category_level2_id"];
    _categoryLevel2Name = json["category_level2_name"];
    _categoryLevel2Path = json["category_level2_path"];
    _categoryLevel3Id = json["category_level3_id"];
    _categoryLevel3Name = json["category_level3_name"];
    _categoryLevel3Path = json["category_level3_path"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["category_level1_id"] = _categoryLevel1Id;
    map["category_level1_name"] = _categoryLevel1Name;
    map["category_level1_path"] = _categoryLevel1Path;
    map["category_level2_id"] = _categoryLevel2Id;
    map["category_level2_name"] = _categoryLevel2Name;
    map["category_level2_path"] = _categoryLevel2Path;
    map["category_level3_id"] = _categoryLevel3Id;
    map["category_level3_name"] = _categoryLevel3Name;
    map["category_level3_path"] = _categoryLevel3Path;
    return map;
  }

}

class Ratings {
  List<DataRating> _data;
  int _totalCount;

  List<DataRating> get data => _data;
  int get totalCount => _totalCount;

  Ratings({
      List<DataRating> data,
      int totalCount}){
    _data = data;
    _totalCount = totalCount;
}

  Ratings.fromJson(dynamic json) {
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(DataRating.fromJson(v));
      });
    }
    _totalCount = json["total_count"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    map["total_count"] = _totalCount;
    return map;
  }

}

class DataRating {
  String _image;
  String _comment;
  int _star;
  String _timeUpdated;
  int _ratingId;
  String _userName;
  int _customerId;

  String get image => _image;
  String get comment => _comment;
  int get star => _star;
  String get timeUpdated => _timeUpdated;
  int get ratingId => _ratingId;
  String get userName => _userName;
  int get customerId => _customerId;

  DataRating({
      String image, 
      String comment, 
      int star, 
      String timeUpdated, 
      int ratingId, 
      String userName, 
      int customerId}){
    _image = image;
    _comment = comment;
    _star = star;
    _timeUpdated = timeUpdated;
    _ratingId = ratingId;
    _userName = userName;
    _customerId = customerId;
}

  DataRating.fromJson(dynamic json) {
    _image = json["image"];
    _comment = json["comment"];
    _star = json["star"];
    _timeUpdated = json["timeUpdated"];
    _ratingId = json["rating_id"];
    _userName = json["user_name"];
    _customerId = json["customer_id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["image"] = _image;
    map["comment"] = _comment;
    map["star"] = _star;
    map["timeUpdated"] = _timeUpdated;
    map["rating_id"] = _ratingId;
    map["user_name"] = _userName;
    map["customer_id"] = _customerId;
    return map;
  }

}

class Comments {
  int _totalCount;
  List<Data> _data;

  int get totalCount => _totalCount;
  List<Data> get data => _data;

  Comments({
      int totalCount, 
      List<Data> data}){
    _totalCount = totalCount;
    _data = data;
}

  Comments.fromJson(dynamic json) {
    _totalCount = json["totalCount"].toInt();
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["totalCount"] = _totalCount;
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  String _id;
  String _data;
  String _parentId;
  int _customerId;
  String _customerName;
  String _customerLogo;
  String _timeCreated;
  String _timeUpdated;
  bool _isShop;

  String get id => _id;
  String get data => _data;
  String get parentId => _parentId;
  int get customerId => _customerId;
  String get customerName => _customerName;
  String get customerLogo => _customerLogo;
  String get timeCreated => _timeCreated;
  String get timeUpdated => _timeUpdated;
  bool get isShop => _isShop;

  Data({
      String id, 
      String data, 
      String parentId, 
      int customerId, 
      String customerName, 
      String customerLogo, 
      String timeCreated, 
      String timeUpdated, 
      bool isShop}){
    _id = id;
    _data = data;
    _parentId = parentId;
    _customerId = customerId;
    _customerName = customerName;
    _customerLogo = customerLogo;
    _timeCreated = timeCreated;
    _timeUpdated = timeUpdated;
    _isShop = isShop;
}

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _data = json["data"];
    _parentId = json["parent_id"];
    _customerId = json["customer_id"];
    _customerName = json["customer_name"];
    _customerLogo = json["customer_logo"];
    _timeCreated = json["time_created"];
    _timeUpdated = json["time_updated"];
    _isShop = json["is_shop"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["data"] = _data;
    map["parent_id"] = _parentId;
    map["customer_id"] = _customerId;
    map["customer_name"] = _customerName;
    map["customer_logo"] = _customerLogo;
    map["time_created"] = _timeCreated;
    map["time_updated"] = _timeUpdated;
    map["is_shop"] = _isShop;
    return map;
  }

}

class Attribute {
  String _name;
  List<Value> _value;
  int _attributeId;

  String get name => _name;
  List<Value> get value => _value;
  int get attributeId => _attributeId;

  Attribute({
      String name, 
      List<Value> value, 
      int attributeId}){
    _name = name;
    _value = value;
    _attributeId = attributeId;
}

  Attribute.fromJson(dynamic json) {
    _name = json["name"];
    if (json["value"] != null) {
      _value = [];
      json["value"].forEach((v) {
        _value.add(Value.fromJson(v));
      });
    }
    _attributeId = json["attribute_id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    if (_value != null) {
      map["value"] = _value.map((v) => v.toJson()).toList();
    }
    map["attribute_id"] = _attributeId;
    return map;
  }

}

class Value {
  String _value;
  int _optionId;

  String get value => _value;
  int get optionId => _optionId;

  Value({
      String value, 
      int optionId}){
    _value = value;
    _optionId = optionId;
}

  Value.fromJson(dynamic json) {
    _value = json["value"];
    _optionId = json["option_id"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["value"] = _value;
    map["option_id"] = _optionId;
    return map;
  }

}