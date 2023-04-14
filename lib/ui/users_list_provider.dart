import 'package:flutter/material.dart';
import 'package:architecture_for_beginners/domain/entities/user.dart';
import 'package:architecture_for_beginners/domain/repositories/users_repository.dart';

class UsersListProvider with ChangeNotifier {
  final UsersRepository usersRepository;

  UsersListProvider({required this.usersRepository});

  List<User> _users = [];

  List<User> get users => _users;

  Future<void> getUsers() async {
    _users = await usersRepository.getUsers();
    notifyListeners();
  }
}
