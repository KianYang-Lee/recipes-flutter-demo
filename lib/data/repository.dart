import 'models/models.dart';

abstract class Repository {
  // ADD FIND METHODS
  List<Recipe> findAllRecipes();
  Recipe findRecipeById(int id);
  List<Ingredient> findAllIngredients();
  List<Ingredient> findRecipeIngredients(int recipeId);

  // ADD INSERT METHODS
  int insertRecipe(Recipe recipe);
  List<int> insertIngredients(List<Ingredient> ingredients);

  // ADD DELETE METHODS
  void deleteRecipe(Recipe recipe);
  void deleteIngredient(Ingredient ingredient);
  void deleteIngredients(List<Ingredient> ingredients);
  void deleteRecipeIngredients(int recipeId);

  // ADD INITIALIZING AND CLOSING METHODS
  Future init();
  void close();
}
