import 'dart:convert';
import 'package:architecture_for_beginners/domain/entities/user.dart';
import 'package:architecture_for_beginners/domain/repositories/users_repository.dart';
import 'package:architecture_for_beginners/data/models/user_json.dart';
import 'package:http/http.dart' as http;

class RestApiUsersRepository implements UsersRepository {
  @override
  Future<List<User>> getUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    var list = jsonDecode(response.body) as List;
    return list.map((e) => UserJson.fromJson(e).toDomain()).toList();
  }
}
