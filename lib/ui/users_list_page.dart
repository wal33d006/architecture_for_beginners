import 'package:flutter/material.dart';
import 'package:architecture_for_beginners/ui/users_list_provider.dart';
import 'package:architecture_for_beginners/ui/widgets/user_card.dart';
import 'package:provider/provider.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: context
              .watch<UsersListProvider>()
              .users
              .map(
                (e) => UserCard(user: e),
              )
              .toList(),
        ),
      ),
    );
  }
}
