-- Insert sample orders
INSERT INTO Orders VALUES (1, 1, 5);  -- 5 liters of Purple
INSERT INTO Orders VALUES (2, 3, 2);  -- 2 liters of Orange

-- Calculate total RGB paint needed for an order
SELECT
    o.order_id,
    r.mix_name,
    ROUND(SUM(c.red * ri.proportion * o.quantity)) AS total_red,
    ROUND(SUM(c.green * ri.proportion * o.quantity)) AS total_green,
    ROUND(SUM(c.blue * ri.proportion * o.quantity)) AS total_blue
FROM Orders o
JOIN PaintMixRecipes r ON o.recipe_id = r.recipe_id
JOIN RecipeIngredients ri ON r.recipe_id = ri.recipe_id
JOIN Colors c ON ri.color_id = c.color_id
GROUP BY o.order_id, r.mix_name;
