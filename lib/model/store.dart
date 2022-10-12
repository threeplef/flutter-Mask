class Store {
  Store({
      this.code, 
      this.name, 
      this.addr, 
      this.type, 
      this.lat, 
      this.lng, 
      this.stockAt, 
      this.remainStat, 
      this.createdAt,});

  Store.fromJson(dynamic json) {
    code = json['code'];
    name = json['name'];
    addr = json['addr'];
    type = json['type'];
    lat = json['lat'];
    lng = json['lng'];
    stockAt = json['stock_at'];
    remainStat = json['remain_stat'];
    createdAt = json['created_at'];
  }
  String? code;
  String? name;
  String? addr;
  String? type;
  num? lat;
  num? lng;
  String? stockAt;
  String? remainStat;
  String? createdAt;
Store copyWith({  String? code,
  String? name,
  String? addr,
  String? type,
  num? lat,
  num? lng,
  String? stockAt,
  String? remainStat,
  String? createdAt,
}) => Store(  code: code ?? this.code,
  name: name ?? this.name,
  addr: addr ?? this.addr,
  type: type ?? this.type,
  lat: lat ?? this.lat,
  lng: lng ?? this.lng,
  stockAt: stockAt ?? this.stockAt,
  remainStat: remainStat ?? this.remainStat,
  createdAt: createdAt ?? this.createdAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['name'] = name;
    map['addr'] = addr;
    map['type'] = type;
    map['lat'] = lat;
    map['lng'] = lng;
    map['stock_at'] = stockAt;
    map['remain_stat'] = remainStat;
    map['created_at'] = createdAt;
    return map;
  }

}