import 'package:custom_inherited_widget_example/model/user_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HomePage ${UserModel.of(context).name}'),
      ),
    );
  }
}
