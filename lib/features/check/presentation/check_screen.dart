import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("レビュー確認"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("レビュータイトル"),
            subtitle: Text("レビュー内容"),
          )
        ],
      ),
    );
  }
}
