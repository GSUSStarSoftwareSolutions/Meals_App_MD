import 'package:meals_app/Data/dummy_data.dart';
import 'package:riverpod/riverpod.dart';

final MealProvider = Provider((ref) {
  return dummyMeals;
});
