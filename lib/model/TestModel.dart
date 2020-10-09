// To parse this JSON data, do
//
//     final test = testFromJson(jsonString);

import 'dart:convert';

List<Test> testFromJson(String str) => List<Test>.from(json.decode(str).map((x) => Test.fromJson(x)));

String testToJson(List<Test> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Test {
    Test({
        this.name,
        this.age,
        this.tele,
    });

    String name;
    String age;
    String tele;

    factory Test.fromJson(Map<String, dynamic> json) => Test(
        name: json["name"],
        age: json["age"],
        tele: json["tele"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "tele": tele,
    };
}
