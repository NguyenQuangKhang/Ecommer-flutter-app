class Category {
  int _id;
  int _level;
  String _name;
  String _icon;
  String _categoryPath;

  int get id => _id;
  int get level => _level;
  String get name => _name;
  String get icon => _icon;
  String get categoryPath => _categoryPath;

  Category({
      int id, 
      int level, 
      String name, 
      String icon, 
      String categoryPath}){
    _id = id;
    _level = level;
    _name = name;
    _icon = icon;
    _categoryPath = categoryPath;
}

  Category.fromJson(dynamic json) {
    _id = json["id"];
    _level = json["level"];
    _name = json["name"];
    _icon = json["icon"];
    _categoryPath = json["category-path"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["level"] = _level;
    map["name"] = _name;
    map["icon"] = _icon;
    map["category-path"] = _categoryPath;
    return map;
  }

}