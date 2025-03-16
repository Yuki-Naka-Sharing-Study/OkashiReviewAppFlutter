import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("レビュー"),
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
