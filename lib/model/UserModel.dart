import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    String? name,
    String? email,
    String? address,
    String? phone,
    String? website,
  }) {
    _name = name;
    _email = email;
    _address = address;
    _phone = phone;
    _website = website;
  }

  UserModel.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _address = json['address'];
    _phone = json['phone'];
    _website = json['website'];
  }

  String? _name;
  String? _email;
  String? _address;
  String? _phone;
  String? _website;

  UserModel copyWith({
    String? name,
    String? email,
    String? address,
    String? phone,
    String? website,
  }) =>
      UserModel(
        name: name ?? _name,
        email: email ?? _email,
        address: address ?? _address,
        phone: phone ?? _phone,
        website: website ?? _website,
      );

  String? get name => _name;

  String? get email => _email;

  String? get address => _address;

  String? get phone => _phone;

  String? get website => _website;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['address'] = _address;
    map['phone'] = _phone;
    map['website'] = _website;
    return map;
  }
}
