import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'review_dao.dart'; // DAOをインポート

part 'review_database.g.dart';

class Reviews extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();       // お菓子の名前
  TextColumn get shop => text()();       // お店の名前
  TextColumn get types => text()();      // お菓子の種類（カンマ区切り）
  RealColumn get rating => real()();     // 評価（0〜5）
  TextColumn get memo => text().nullable()(); // メモ（任意）
}

@DriftDatabase(tables: [Reviews], daos: [ReviewDao])
class ReviewDatabase extends _$ReviewDatabase {
  ReviewDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'review.sqlite'));
    return NativeDatabase(file);
  });
}
