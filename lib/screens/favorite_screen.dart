import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = 'favorite';
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Fav Screen"),
    );
  }
}
