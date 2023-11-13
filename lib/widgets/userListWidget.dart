import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/userProvider.dart';

class UserListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context, listen: true);

    return SingleChildScrollView(
      child: ListView.builder(
          itemCount: userProvider.users.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${userProvider.users[index].id}    ${userProvider.users[index].getFullName()}'),
              trailing: Text(userProvider.users[index].schoolClass),
            );
          }
      ),
    );
  }

}