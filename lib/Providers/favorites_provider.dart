import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/Models/meals.dart';

class FavoriteMealNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
      return true;
    }
    return false;
  }
}

final FavoriteMealsProvider =
    StateNotifierProvider<FavoriteMealNotifier, List<Meal>>((ref) {
  return FavoriteMealNotifier();
});
