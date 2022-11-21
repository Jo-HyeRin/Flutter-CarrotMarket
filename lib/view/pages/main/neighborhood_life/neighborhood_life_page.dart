import 'package:carrot_market/view/components/build_app_bar.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifePage extends StatelessWidget {
  const NeighborhoodLifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Text("NeighborhoodLife"),
    );
  }
}
