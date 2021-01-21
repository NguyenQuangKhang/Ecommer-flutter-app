class User {
  int _id;
  String _name;
  bool _shop;
  String _email;
  String _birthday;
  String _phoneNumber;
  String _sex;
  String _address;
  bool _recordStatus;
  String _timeCreated;
  String _timeUpdated;
  ImageAvatar _imageAvatar;

  int get id => _id;
  String get name => _name;
  bool get shop => _shop;
  String get email => _email;
  String get birthday => _birthday;
  String get phoneNumber => _phoneNumber;
  String get sex => _sex;
  String get address => _address;
  bool get recordStatus => _recordStatus;
  String get timeCreated => _timeCreated;
  String get timeUpdated => _timeUpdated;
  ImageAvatar get imageAvatar => _imageAvatar;

  User({
      int id, 
      String name, 
      bool shop, 
      String email, 
      String birthday, 
      String phoneNumber, 
      String sex, 
      String address, 
      bool recordStatus, 
      String timeCreated, 
      String timeUpdated, 
      ImageAvatar imageAvatar}){
    _id = id;
    _name = name;
    _shop = shop;
    _email = email;
    _birthday = birthday;
    _phoneNumber = phoneNumber;
    _sex = sex;
    _address = address;
    _recordStatus = recordStatus;
    _timeCreated = timeCreated;
    _timeUpdated = timeUpdated;
    _imageAvatar = imageAvatar;
}

  User.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _shop = json["shop"];
    _email = json["email"];
    _birthday = json["birthday"];
    _phoneNumber = json["phoneNumber"];
    _sex = json["sex"];
    _address = json["address"];
    _recordStatus = json["recordStatus"];
    _timeCreated = json["timeCreated"];
    _timeUpdated = json["timeUpdated"];
    _imageAvatar = json["imageAvatar"] != null ? ImageAvatar.fromJson(json["imageAvatar"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["shop"] = _shop;
    map["email"] = _email;
    map["birthday"] = _birthday;
    map["phoneNumber"] = _phoneNumber;
    map["sex"] = _sex;
    map["address"] = _address;
    map["recordStatus"] = _recordStatus;
    map["timeCreated"] = _timeCreated;
    map["timeUpdated"] = _timeUpdated;
    if (_imageAvatar != null) {
      map["imageAvatar"] = _imageAvatar.toJson();
    }
    return map;
  }

}

class ImageAvatar {
  String _id;
  String _name;
  String _type;
  String _link;

  String get id => _id;
  String get name => _name;
  String get type => _type;
  String get link => _link;

  ImageAvatar({
      String id, 
      String name, 
      String type, 
      String link}){
    _id = id;
    _name = name;
    _type = type;
    _link = link;
}

  ImageAvatar.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _type = json["type"];
    _link = json["link"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["type"] = _type;
    map["link"] = _link;
    return map;
  }

}