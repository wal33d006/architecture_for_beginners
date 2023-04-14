import 'package:architecture_for_beginners/domain/entities/user.dart';

abstract class UsersRepository {
  Future<List<User>> getUsers();
}
