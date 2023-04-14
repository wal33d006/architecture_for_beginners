import 'package:architecture_for_beginners/data/users_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:architecture_for_beginners/domain/repositories/users_repository.dart';
import 'package:architecture_for_beginners/ui/users_list_page.dart';
import 'package:architecture_for_beginners/ui/users_list_provider.dart';
import 'package:provider/provider.dart';

GetIt getIt = GetIt.instance;

void main() async {
  getIt.registerLazySingleton<UsersRepository>(() => RestApiUsersRepository());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UsersListProvider(usersRepository: getIt())..getUsers(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UsersListPage(),
    );
  }
}
