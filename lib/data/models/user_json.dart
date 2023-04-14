import 'package:architecture_for_beginners/domain/entities/user.dart';

class UserJson {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  UserJson({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory UserJson.fromJson(Map<String, dynamic> json) => UserJson(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email'],
        phone: json['phone'],
        website: json['website'],
      );

  User toDomain() => User(
        id: id,
        name: name + email,
        username: username,
        email: email,
        phone: phone,
        website: website,
      );
}
