-- Table: Colors
CREATE TABLE Colors (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50),
    red INT,   -- RGB values 0-255
    green INT,
    blue INT
);

-- Table: PaintMixRecipes
CREATE TABLE PaintMixRecipes (
    recipe_id INT PRIMARY KEY,
    mix_name VARCHAR(50)
);

-- Table: RecipeIngredients
CREATE TABLE RecipeIngredients (
    recipe_id INT,
    color_id INT,
    proportion DECIMAL(5,2), -- e.g., 0.5 for 50%
    PRIMARY KEY (recipe_id, color_id),
    FOREIGN KEY (recipe_id) REFERENCES PaintMixRecipes(recipe_id),
    FOREIGN KEY (color_id) REFERENCES Colors(color_id)
);

-- Table: Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    recipe_id INT,
    quantity DECIMAL(5,2), -- amount in liters
    FOREIGN KEY (recipe_id) REFERENCES PaintMixRecipes(recipe_id)
);
