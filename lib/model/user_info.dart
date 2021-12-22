import 'dart:convert';

class UserInfo {
  UserInfo({
    required this.id,
    required this.user_name,
    required this.email,
    required this.password,
  });

  int id;
  String user_name;
  String email;
  String password;

  factory UserInfo.fromRawJson(String str) =>
      UserInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"],
        user_name: json["name"],
        email: json["email"],
        password: json["pass"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": user_name,
        "email": email,
        "pass": password,
      };

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': user_name,
      'email': email,
      'pass': password,
    };
  }

  @override
  String toString() {
    return 'UserInfo{id: $id, user_name: $user_name, email: $email, password: $password}';
  }

// Implement toString to make it easier to see information about
  // each dog when using the print statement.




}
