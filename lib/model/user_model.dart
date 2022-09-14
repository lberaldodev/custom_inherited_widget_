import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  const UserModel({
    super.key,
    required this.name,
    required super.child,
  });

  final String name;

  static UserModel of(BuildContext context) {
    final UserModel? result =
        context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(result != null, 'No UserModel found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(UserModel oldWidget) => name != oldWidget.name;
}
