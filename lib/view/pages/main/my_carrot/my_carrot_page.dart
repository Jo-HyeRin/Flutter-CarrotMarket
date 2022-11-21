import 'package:carrot_market/view/components/build_app_bar.dart';
import 'package:flutter/material.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Text("MyCarrotPage"),
    );
  }
}
