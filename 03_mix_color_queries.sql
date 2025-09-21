-- Calculate resulting RGB for each paint recipe
SELECT
    r.mix_name,
    ROUND(SUM(c.red * ri.proportion)) AS red_value,
    ROUND(SUM(c.green * ri.proportion)) AS green_value,
    ROUND(SUM(c.blue * ri.proportion)) AS blue_value
FROM PaintMixRecipes r
JOIN RecipeIngredients ri ON r.recipe_id = ri.recipe_id
JOIN Colors c ON ri.color_id = c.color_id
GROUP BY r.mix_name;
