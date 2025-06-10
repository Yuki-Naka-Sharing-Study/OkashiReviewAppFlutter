import 'package:drift/drift.dart';
import 'review_database.dart';

part 'review_dao.g.dart';

@DriftAccessor(tables: [Reviews])
class ReviewDao extends DatabaseAccessor<ReviewDatabase> with _$ReviewDaoMixin {
  ReviewDao(ReviewDatabase db) : super(db);

  Future<void> insertReview(ReviewsCompanion review) =>
      into(reviews).insert(review);

  Future<List<Review>> getAllReviews() =>
      select(reviews).get();

  Future<void> deleteReview(int id) =>
      (delete(reviews)..where((tbl) => tbl.id.equals(id))).go();

  Future<void> updateReview(Review updated) =>
      update(reviews).replace(updated);
}
