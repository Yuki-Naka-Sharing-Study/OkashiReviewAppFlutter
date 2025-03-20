import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final TextEditingController _controller = TextEditingController();

  // 選択された項目を格納するリスト
  List<String> selectedItems = [];

  // ドロップダウンに表示する項目
  final List<String> items = [
    'チョコ',
    'キャラメル',
    '抹茶',
    'フルーツ',
    'その他',
  ];

  // ダイアログを表示して選択を受け取る
  void _showMultiSelectDialog() async {
    final List<String> selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('選択してください'),
          content: SingleChildScrollView(
            child: Column(
              children: items.map((item) {
                return CheckboxListTile(
                  title: Text(item),
                  value: selectedItems.contains(item),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        selectedItems.add(item);
                      } else {
                        selectedItems.remove(item);
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(selectedItems);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );

    // ダイアログから選択された項目を更新
    setState(() {
      selectedItems = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("レビュー"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("お菓子の名前"),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'テキストを入力',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("お菓子のお店"),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'テキストを入力',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("お菓子の種類"),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _showMultiSelectDialog,
                  child: Text('お菓子の種類を選択'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("評価"),
                const SizedBox(width: 8),
                RatingBar.builder(
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (rating) {
                    //評価が更新されたときの処理を書く
                  },
                  allowHalfRating: true,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("メモ"),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(30),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      elevation: 16,
                    ),
                    onPressed: () {},
                    child: const Text('保存'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
