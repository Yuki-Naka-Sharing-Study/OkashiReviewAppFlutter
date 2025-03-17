import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("レビュー確認"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: "チョコ"),
              Tab(text: "キャラメル"),
              Tab(text: "抹茶"),
              Tab(text: "フルーツ"),
              Tab(text: "その他"),
            ],
          ),
        ),
        body: TabBarView(
          children: [

            ListView(
              children: List.generate(10, (index) {
                return ListTile(
                  title: Text("チョコ"),
                  subtitle: Text("これはチョコです。"),
                );
              }),
            ),

            ListView(
              children: List.generate(10, (index) {
                return ListTile(
                  title: Text("キャラメル"),
                  subtitle: Text("これはキャラメルです。"),
                );
              }),
            ),

            ListView(
              children: List.generate(10, (index) {
                return ListTile(
                  title: Text("抹茶"),
                  subtitle: Text("これは抹茶です。"),
                );
              }),
            ),

            ListView(
              children: List.generate(10, (index) {
                return ListTile(
                  title: Text("フルーツ"),
                  subtitle: Text("これはフルーツです。"),
                );
              }),
            ),

            ListView(
              children: List.generate(10, (index) {
                return ListTile(
                  title: Text("その他"),
                  subtitle: Text("これはその他です。"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
