import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Online extends StatelessWidget {
  final List<User> onlineUsers;

  const Online({
    required this.onlineUsers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 4.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            final User user = onlineUsers[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}