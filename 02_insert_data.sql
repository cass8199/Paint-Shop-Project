-- Insert Colors
INSERT INTO Colors VALUES
(1, 'Red', 255, 0, 0),
(2, 'Blue', 0, 0, 255),
(3, 'Yellow', 255, 255, 0),
(4, 'White', 255, 255, 255),
(5, 'Black', 0, 0, 0);

-- Insert Recipes
INSERT INTO PaintMixRecipes VALUES (1, 'Purple');
INSERT INTO PaintMixRecipes VALUES (2, 'Green');
INSERT INTO PaintMixRecipes VALUES (3, 'Orange');

-- Insert Recipe Ingredients
-- Purple = 50% Red + 50% Blue
INSERT INTO RecipeIngredients VALUES (1, 1, 0.5);
INSERT INTO RecipeIngredients VALUES (1, 2, 0.5);

-- Green = 50% Blue + 50% Yellow
INSERT INTO RecipeIngredients VALUES (2, 2, 0.5);
INSERT INTO RecipeIngredients VALUES (2, 3, 0.5);

-- Orange = 50% Red + 50% Yellow
INSERT INTO RecipeIngredients VALUES (3, 1, 0.5);
INSERT INTO RecipeIngredients VALUES (3, 3, 0.5);
