class ProductDetailed {
  int _id;
  int _productExternalId;
  String _name;
  int _adminId;
  List<String> _images;
  int _price;
  int _finalPrice;
  int _promotionPercent;
  int _isPromotion;
  String _description;
  int _totalComment;
  int _counterLike;
  int _orderCount;
  int _weight;
  int _quantity;
  bool _isActive;
  String _requiredOptions;
  List<Attribute> _attribute;
  Rating_info _ratingInfo;
  String _shortDescription;
  int _stockStatus;
  String _statusText;
  Ratings _ratings;
  Categories _categories;
  Shop_info _shopInfo;
  String _statusQuantity;
  int _isEvent;

  int get id => _id;

  int get productExternalId => _productExternalId;

  String get name => _name;

  int get adminId => _adminId;

  List<String> get images => _images;

  int get price => _price;

  int get finalPrice => _finalPrice;

  int get promotionPercent => _promotionPercent;

  int get isPromotion => _isPromotion;

  String get description => _description;

  int get totalComment => _totalComment;

  int get counterLike => _counterLike;

  int get orderCount => _orderCount;

  int get weight => _weight;

  int get quantity => _quantity;

  bool get isActive => _isActive;

  String get requiredOptions => _requiredOptions;

  List<Attribute> get attribute => _attribute;

  Rating_info get ratingInfo => _ratingInfo;

  String get shortDescription => _shortDescription;

  int get stockStatus => _stockStatus;

  String get statusText => _statusText;


  Ratings get ratings => _ratings;

  Categories get categories => _categories;

  Shop_info get shopInfo => _shopInfo;

  String get statusQuantity => _statusQuantity;

  int get isEvent => _isEvent;

  ProductDetailed(
      {int id,
      int productExternalId,
      String name,
      int adminId,
      List<String> images,
      int price,
      int finalPrice,
      int promotionPercent,
      int isPromotion,
      String description,
      int totalComment,
      int counterLike,
      int orderCount,
      int weight,
      int quantity,
      bool isActive,
      String requiredOptions,
      List<Attribute> attribute,
      Rating_info ratingInfo,
      String shortDescription,
      int stockStatus,
      String statusText,
      Comments comments,
      Ratings ratings,
      Categories categories,
      Shop_info shopInfo,
      String statusQuantity,
      int isEvent}) {
    _id = id;
    _productExternalId = productExternalId;
    _name = name;
    _adminId = adminId;
    _images = images;
    _price = price;
    _finalPrice = finalPrice;
    _promotionPercent = promotionPercent;
    _isPromotion = isPromotion;
    _description = description;
    _totalComment = totalComment;
    _counterLike = counterLike;
    _orderCount = orderCount;
    _weight = weight;
    _quantity = quantity;
    _isActive = isActive;
    _requiredOptions = requiredOptions;
    _attribute = attribute;
    _ratingInfo = ratingInfo;
    _shortDescription = shortDescription;
    _stockStatus = stockStatus;
    _statusText = statusText;
    _ratings = ratings;
    _categories = categories;
    _shopInfo = shopInfo;
    _statusQuantity = statusQuantity;
    _isEvent = isEvent;
  }

  ProductDetailed.fromJson(dynamic json) {
    _id = json["id"];
    _productExternalId = json["product_external_id"];
    _name = json["name"];
    _adminId = json["admin_id"];
    _images = json["images"] != null ? json["images"].cast<String>() : [];
    _price = json["price"];
    _finalPrice = json["final_price"];
    _promotionPercent = json["promotion_percent"];
    _isPromotion = json["is_promotion"];
    _description = json["description"];
    _totalComment = json["total_comment"];
    _counterLike = json["counter_like"];
    _orderCount = json["order_count"];
    _weight = json["weight"];
    _quantity = json["quantity"];
    _isActive = json["is_active"];
    _requiredOptions = json["required_options"];
    if (json["attribute"] != null) {
      _attribute = [];
      json["attribute"].forEach((v) {
        _attribute.add(Attribute.fromJson(v));
      });
    }
    _ratingInfo = json["rating_info"] != null
        ? Rating_info.fromJson(json["rating_info"])
        : null;
    _shortDescription = json["short_description"];
    _stockStatus = json["stock_status"];
    _statusText = json["status_text"];
    _ratings =
        json["ratings"] != null ? Ratings.fromJson(json["ratings"]) : null;
    _categories = json["categories"] != null
        ? Categories.fromJson(json["categories"])
        : null;
    _shopInfo =
        json["shop_info"] != null ? Shop_info.fromJson(json["shop_info"]) : null;
    _statusQuantity = json["status_quantity"];
    _isEvent = json["is_event"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["product_external_id"] = _productExternalId;
    map["name"] = _name;
    map["admin_id"] = _adminId;
    map["images"] = _images;
    map["price"] = _price;
    map["final_price"] = _finalPrice;
    map["promotion_percent"] = _promotionPercent;
    map["is_promotion"] = _isPromotion;
    map["description"] = _description;
    map["total_comment"] = _totalComment;
    map["counter_like"] = _counterLike;
    map["order_count"] = _orderCount;
    map["weight"] = _weight;
    map["quantity"] = _quantity;
    map["is_active"] = _isActive;
    map["required_options"] = _requiredOptions;
    if (_attribute != null) {
      map["attribute"] = _attribute.map((v) => v.toJson()).toList();
    }
    if (_ratingInfo != null) {
      map["rating_info"] = _ratingInfo.toJson();
    }
    map["short_description"] = _shortDescription;
    map["stock_status"] = _stockStatus;
    map["status_text"] = _statusText;
    if (_ratings != null) {
      map["ratings"] = _ratings.toJson();
    }
    if (_categories != null) {
      map["categories"] = _categories.toJson();
    }
    if (_shopInfo != null) {
      map["shop_info"] = _shopInfo.toJson();
    }
    map["status_quantity"] = _statusQuantity;
    map["is_event"] = _isEvent;
    return map;
  }
}

class Shop_info {
  int _customerIdOfShop;
  int _fptId;
  int _shopId;
  String _shopName;
  String _shopLogo;
  int _score;
  int _isCertified;
  int _lotus;
  String _lotusClass;
  int _warehourseRegionId;
  int _shopExternalId;
  String _phoneNumber;
  int _minPriceFreeShip;
  bool _isJoinEvent;
  bool _isJoinTetEvent;
  int _isSenmall;

  int get customerIdOfShop => _customerIdOfShop;

  int get fptId => _fptId;

  int get shopId => _shopId;

  String get shopName => _shopName;

  String get shopLogo => _shopLogo;


  int get score => _score;

  int get isCertified => _isCertified;

  int get lotus => _lotus;

  String get lotusClass => _lotusClass;

  int get warehourseRegionId => _warehourseRegionId;

  int get shopExternalId => _shopExternalId;

  String get phoneNumber => _phoneNumber;

  int get minPriceFreeShip => _minPriceFreeShip;

  bool get isJoinEvent => _isJoinEvent;

  bool get isJoinTetEvent => _isJoinTetEvent;

  int get isSenmall => _isSenmall;

  Shop_info(
      {int customerIdOfShop,
      int fptId,
      int shopId,
      String shopName,
      String shopLogo,
      int score,
      int isCertified,
      int lotus,
      String lotusClass,
      int warehourseRegionId,
      int shopExternalId,
      String phoneNumber,
      int minPriceFreeShip,
      bool isJoinEvent,
      bool isJoinTetEvent,
      int isSenmall}) {
    _customerIdOfShop = customerIdOfShop;
    _fptId = fptId;
    _shopId = shopId;
    _shopName = shopName;
    _shopLogo = shopLogo;
    _score = score;
    _isCertified = isCertified;
    _lotus = lotus;
    _lotusClass = lotusClass;
    _warehourseRegionId = warehourseRegionId;
    _shopExternalId = shopExternalId;
    _phoneNumber = phoneNumber;
    _minPriceFreeShip = minPriceFreeShip;
    _isJoinEvent = isJoinEvent;
    _isJoinTetEvent = isJoinTetEvent;
    _isSenmall = isSenmall;
  }

  Shop_info.fromJson(dynamic json) {
    _customerIdOfShop = json["customer_id_of_shop"];
    _fptId = json["fpt_id"];
    _shopId = json["shop_id"];
    _shopName = json["shop_name"];
    _shopLogo = json["shop_logo"];
    _score = json["score"];
    _isCertified = json["is_certified"];
    _lotus = json["lotus"];
    _lotusClass = json["lotus_class"];
    _warehourseRegionId = json["warehourse_region_id"];
    _shopExternalId = json["shop_external_id"];
    _phoneNumber = json["phone_number"];
    _minPriceFreeShip = json["min_price_free_ship"];
    _isJoinEvent = json["is_join_event"];
    _isJoinTetEvent = json["is_join_tet_event"];
    _isSenmall = json["is_senmall"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["customer_id_of_shop"] = _customerIdOfShop;
    map["fpt_id"] = _fptId;
    map["shop_id"] = _shopId;
    map["shop_name"] = _shopName;
    map["shop_logo"] = _shopLogo;
    map["score"] = _score;
    map["is_certified"] = _isCertified;
    map["lotus"] = _lotus;
    map["lotus_class"] = _lotusClass;
    map["warehourse_region_id"] = _warehourseRegionId;
    map["shop_external_id"] = _shopExternalId;
    map["phone_number"] = _phoneNumber;
    map["min_price_free_ship"] = _minPriceFreeShip;
    map["is_join_event"] = _isJoinEvent;
    map["is_join_tet_event"] = _isJoinTetEvent;
    map["is_senmall"] = _isSenmall;
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

  Categories(
      {int categoryLevel1Id,
      String categoryLevel1Name,
      String categoryLevel1Path,
      int categoryLevel2Id,
      String categoryLevel2Name,
      String categoryLevel2Path,
      int categoryLevel3Id,
      String categoryLevel3Name,
      String categoryLevel3Path}) {
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
  int _totalCount;
  List<DataRating> _data;

  int get totalCount => _totalCount;

  List<DataRating> get data => _data;

  Ratings({int totalCount, List<DataRating> data}) {
    _totalCount = totalCount;
    _data = data;
  }

  Ratings.fromJson(dynamic json) {
    _totalCount = json["total_count"];
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(DataRating.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["total_count"] = _totalCount;
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class DataRating {
  int _ratingId;
  int _id;
  String _userName;
  String _image;
  int _customerId;
  String _comment;
  int _star;
  String _status;
  int _type;
  bool _likeStatus;
  int _likeCount;
  int _totalComment;
  List<Cart_attributes> _cartAttributes;
  String _updateTime;
  int _mobUpdateTime;

  int get ratingId => _ratingId;

  int get id => _id;

  String get userName => _userName;

  String get image => _image;

  int get customerId => _customerId;

  String get comment => _comment;

  int get star => _star;

  String get status => _status;

  int get type => _type;

  bool get likeStatus => _likeStatus;

  int get likeCount => _likeCount;

  int get totalComment => _totalComment;

  List<Cart_attributes> get cartAttributes => _cartAttributes;

  String get updateTime => _updateTime;

  int get mobUpdateTime => _mobUpdateTime;

  DataRating(
      {int ratingId,
      int id,
      String userName,
      String image,
      int customerId,
      String comment,
      int star,
      String status,
      int type,
      bool likeStatus,
      int likeCount,
      int totalComment,
      List<Cart_attributes> cartAttributes,
      String updateTime,
      int mobUpdateTime}) {
    _ratingId = ratingId;
    _id = id;
    _userName = userName;
    _image = image;
    _customerId = customerId;
    _comment = comment;
    _star = star;
    _status = status;
    _type = type;
    _likeStatus = likeStatus;
    _likeCount = likeCount;
    _totalComment = totalComment;
    _cartAttributes = cartAttributes;
    _updateTime = updateTime;
    _mobUpdateTime = mobUpdateTime;
  }

  DataRating.fromJson(dynamic json) {
    _ratingId = json["rating_id"];
    _id = json["id"];
    _userName = json["user_name"];
    _image = json["image"];
    _customerId = json["customer_id"];
    _comment = json["comment"];
    _star = json["star"];
    _status = json["status"];
    _type = json["type"];
    _likeStatus = json["like_status"];
    _likeCount = json["like_count"];
    _totalComment = json["total_comment"];
    if (json["cart_attributes"] != null) {
      _cartAttributes = [];
      json["cart_attributes"].forEach((v) {
        _cartAttributes.add(Cart_attributes.fromJson(v));
      });
    }
    _updateTime = json["update_time"];
    _mobUpdateTime = json["mob_update_time"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["rating_id"] = _ratingId;
    map["id"] = _id;
    map["user_name"] = _userName;
    map["image"] = _image;
    map["customer_id"] = _customerId;
    map["comment"] = _comment;
    map["star"] = _star;
    map["status"] = _status;
    map["type"] = _type;
    map["like_status"] = _likeStatus;
    map["like_count"] = _likeCount;
    map["total_comment"] = _totalComment;
    if (_cartAttributes != null) {
      map["cart_attributes"] = _cartAttributes.map((v) => v.toJson()).toList();
    }
    map["update_time"] = _updateTime;
    map["mob_update_time"] = _mobUpdateTime;
    return map;
  }
}

class Cart_attributes {
  String _searchKey;
  int _productOptionId;
  String _value;

  String get searchKey => _searchKey;

  int get productOptionId => _productOptionId;

  String get value => _value;

  Cart_attributes({String searchKey, int productOptionId, String value}) {
    _searchKey = searchKey;
    _productOptionId = productOptionId;
    _value = value;
  }

  Cart_attributes.fromJson(dynamic json) {
    _searchKey = json["search_key"];
    _productOptionId = json["product_option_id"];
    _value = json["value"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["search_key"] = _searchKey;
    map["product_option_id"] = _productOptionId;
    map["value"] = _value;
    return map;
  }
}

class Comments {
  int _totalCount;
  int _offset;
  List<Data> _data;

  int get totalCount => _totalCount;

  int get offset => _offset;

  List<Data> get data => _data;

  Comments({int totalCount, int offset, List<Data> data}) {
    _totalCount = totalCount;
    _offset = offset;
    _data = data;
  }

  Comments.fromJson(dynamic json) {
    _totalCount = json["total_count"];
    _offset = json["offset"];
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["total_count"] = _totalCount;
    map["offset"] = _offset;
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Data {
  String _id;
  String _parentId;
  int _customerId;
  String _customerName;
  String _customerLogo;
  String _data;
  int _totalReply;
  bool _isShop;
  String _time;
  String _timeCreate;
  String _timeUpdate;

  String get id => _id;

  String get parentId => _parentId;

  int get customerId => _customerId;

  String get customerName => _customerName;

  String get customerLogo => _customerLogo;

  String get data => _data;

  int get totalReply => _totalReply;

  bool get isShop => _isShop;

  String get time => _time;

  String get timeCreate => _timeCreate;

  String get timeUpdate => _timeUpdate;

  Data(
      {String id,
      String parentId,
      int customerId,
      String customerName,
      String customerLogo,
      String data,
      int totalReply,
      bool isShop,
      String time,
      String timeCreate,
      String timeUpdate}) {
    _id = id;
    _parentId = parentId;
    _customerId = customerId;
    _customerName = customerName;
    _customerLogo = customerLogo;
    _data = data;
    _totalReply = totalReply;
    _isShop = isShop;
    _time = time;
    _timeCreate = timeCreate;
    _timeUpdate = timeUpdate;
  }

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _parentId = json["parent_id"];
    _customerId = json["customer_id"];
    _customerName = json["customer_name"];
    _customerLogo = json["customer_logo"];
    _data = json["data"];
    _totalReply = json["total_reply"];
    _isShop = json["is_shop"];
    _time = json["time"];
    _timeCreate = json["time_create"];
    _timeUpdate = json["time_update"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["parent_id"] = _parentId;
    map["customer_id"] = _customerId;
    map["customer_name"] = _customerName;
    map["customer_logo"] = _customerLogo;
    map["data"] = _data;
    map["total_reply"] = _totalReply;
    map["is_shop"] = _isShop;
    map["time"] = _time;
    map["time_create"] = _timeCreate;
    map["time_update"] = _timeUpdate;
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

  Rating_info({int star1, int star2, int star3, int star4, int star5}) {
    _star1 = star1;
    _star2 = star2;
    _star3 = star3;
    _star4 = star4;
    _star5 = star5;
  }

  Rating_info.fromJson(dynamic json) {
    _star1 = json["star1"] ?? 0;
    _star2 = json["star2"] ?? 0;
    _star3 = json["star3"] ?? 0;
    _star4 = json["star4"] ?? 0;
    _star5 = json["star5"] ?? 0;
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

class Attribute {
  int _attributeId;
  String _name;
  String _productOption;
  int _showRequired;
  String _type;
  List<Value> _value;
  bool _isCustom;
  String _searchKey;

  int get attributeId => _attributeId;

  String get name => _name;

  String get productOption => _productOption;

  int get showRequired => _showRequired;

  String get type => _type;

  List<Value> get value => _value;

  bool get isCustom => _isCustom;

  String get searchKey => _searchKey;

  Attribute(
      {int attributeId,
      String name,
      String productOption,
      int showRequired,
      String type,
      List<Value> value,
      bool isCustom,
      String searchKey}) {
    _attributeId = attributeId;
    _name = name;
    _productOption = productOption;
    _showRequired = showRequired;
    _type = type;
    _value = value;
    _isCustom = isCustom;
    _searchKey = searchKey;
  }

  Attribute.fromJson(dynamic json) {
    _attributeId = json["attribute_id"];
    _name = json["name"];
    _productOption = json["product_option"];
    _showRequired = json["show_required"];
    _type = json["type"];
    if (json["value"] != null) {
      _value = [];
      json["value"].forEach((v) {
        _value.add(Value.fromJson(v));
      });
    }
    _isCustom = json["is_custom"];
    _searchKey = json["search_key"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["attribute_id"] = _attributeId;
    map["name"] = _name;
    map["product_option"] = _productOption;
    map["show_required"] = _showRequired;
    map["type"] = _type;
    if (_value != null) {
      map["value"] = _value.map((v) => v.toJson()).toList();
    }
    map["is_custom"] = _isCustom;
    map["search_key"] = _searchKey;
    return map;
  }
}

class Value {
  int _optionId;
  String _value;
  String _productOptionId;
  String _image;
  bool _isCustom;

  int get optionId => _optionId;

  String get value => _value;

  String get productOptionId => _productOptionId;

  String get image => _image;

  bool get isCustom => _isCustom;

  Value(
      {int optionId,
      String value,
      String productOptionId,
      String image,
      bool isCustom}) {
    _optionId = optionId;
    _value = value;
    _productOptionId = productOptionId;
    _image = image;
    _isCustom = isCustom;
  }

  Value.fromJson(dynamic json) {
    _optionId = json["option_id"];
    _value = json["value"];
    _productOptionId = json["product_option_id"];
    _image = json["image"];
    _isCustom = json["is_custom"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["option_id"] = _optionId;
    map["value"] = _value;
    map["product_option_id"] = _productOptionId;
    map["image"] = _image;
    map["is_custom"] = _isCustom;
    return map;
  }
}
