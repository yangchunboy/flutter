// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.code,
    this.tip,
    this.data,
    this.success,
    this.message,
  });

  int code;
  bool tip;
  Data data;
  bool success;
  String message;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        code: json["code"],
        tip: json["tip"],
        data: Data.fromJson(json["data"]),
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "tip": tip,
        "data": data.toJson(),
        "success": success,
        "message": message,
      };
}

class Data {
  Data({
    this.page,
    this.pageSize,
    this.hasMore,
    this.data,
  });

  int page;
  int pageSize;
  bool hasMore;
  List<Datum> data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        page: json["page"],
        pageSize: json["pageSize"],
        hasMore: json["hasMore"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "hasMore": hasMore,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.realName,
    this.province,
    this.city,
    this.county,
    this.address,
    this.storeName,
    this.referee,
    this.refereeId,
    this.mobile,
    this.memberId,
  });

  String realName;
  String province;
  String city;
  String county;
  String address;
  String storeName;
  String referee;
  int refereeId;
  String mobile;
  int memberId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        realName: json["real_name"],
        province: json["province"],
        city: json["city"],
        county: json["county"],
        address: json["address"],
        storeName: json["store_name"],
        referee: json["referee"],
        refereeId: json["referee_id"],
        mobile: json["mobile"],
        memberId: json["member_id"],
      );

  Map<String, dynamic> toJson() => {
        "real_name": realName,
        "province": province,
        "city": city,
        "county": county,
        "address": address,
        "store_name": storeName,
        "referee": referee,
        "referee_id": refereeId,
        "mobile": mobile,
        "member_id": memberId,
      };
}
