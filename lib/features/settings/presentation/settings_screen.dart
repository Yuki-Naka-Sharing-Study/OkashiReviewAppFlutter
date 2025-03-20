import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('設定'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('このアプリについて'),
              onTap: () {
                // ここで「このアプリについて」の内容を表示する処理を追加できます
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('お問い合わせ'),
              onTap: () {
                // ここで「お問い合わせ」画面に遷移する処理を追加できます
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('レビューする'),
              onTap: () {
                // ここでレビュー画面に遷移する処理を追加できます
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.share),
              title: Text('このアプリを共有する'),
              onTap: () {
                // ここでアプリの共有処理を追加できます
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('バージョン 1.0.0'),
              onTap: () {
                // ここでバージョン情報の表示処理を追加できます
              },
            ),
          ],
        ),
      ),
    );
  }
}
