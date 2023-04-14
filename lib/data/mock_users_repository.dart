import 'package:architecture_for_beginners/domain/entities/user.dart';
import 'package:architecture_for_beginners/domain/repositories/users_repository.dart';
import 'package:architecture_for_beginners/data/models/user_json.dart';

class MockUsersRepository implements UsersRepository {
  @override
  Future<List<User>> getUsers() async => [
        UserJson(
          id: 123,
          name: 'name',
          username: 'username',
          email: 'email',
          phone: 'phone',
          website: 'website',
        ).toDomain(),
      ];
}
