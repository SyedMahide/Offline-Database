import 'dart:convert';

class Demo {
  Demo({
    required this.id,
    required this.user_name,
    required this.email,
    required this.password,
  });

  int id;
  String user_name;
  String email;
  String password;

  factory Demo.fromRawJson(String str) => Demo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Demo.fromJson(Map<String, dynamic> json) => Demo(
    id: json["_id"],
    user_name: json["user_name"],
    email: json["email"],
    password: json["password"],
  );


  Map<String, dynamic> toJson() => {
    "_id": id,
    "user_name": user_name,
    "email": email,
    "password": password,
    };
  }

