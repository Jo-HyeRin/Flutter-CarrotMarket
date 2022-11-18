import 'package:carrot_market/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("좌동"),
            SizedBox(width: 4.0),
            Icon(CupertinoIcons.chevron_down, size: 15),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[100],
        child: Center(
          child: Text("HomePage Body", style: textTheme().headline2),
        ),
      ),
    );
  }
}
