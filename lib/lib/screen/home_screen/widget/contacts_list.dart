import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:facebook_responsive/lib/model/user_model.dart';
import 'package:facebook_responsive/lib/widgets/widgets.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({
    Key? key,
    required this.users,
  }) : super(key: key);
  final List<UserModel> users;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final UserModel user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: UserCard(user: user),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
