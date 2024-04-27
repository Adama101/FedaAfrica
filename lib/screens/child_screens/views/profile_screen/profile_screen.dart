import 'package:flutter/material.dart';
import 'components/account_app_bar.dart';
import 'components/achievements.dart';
import 'components/friend_suggestions.dart';
import 'components/friend_updates.dart';
import 'components/friends.dart';
import 'components/statistics.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AccountAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1540,
          child: Column(
            children: const [
              Padding(padding: EdgeInsets.all(10)),
              FriendUpdates(),
              Statistics(),
              FriendSuggestions(),
              Friends(),
              Achievements(),
              // Expanded(child: Column(children: [Text('yo')],)),
            ],
          ),
        ),
      ),
    );
  }
}
