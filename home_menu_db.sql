CREATE TABLE meals(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    meal_name TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    time_of_day TEXT NOT NULL
)

CREATE TABLE pantry(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    in_stock TEXT NOT NULL,
    meals_id INTEGER,
    FOREIGN KEY (meals_id) REFERENCES meals(id)
)

CREATE TABLE grocery_list(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    food TEXT NOT NULL,
    amount TEXT NOT NULL,
    meals_id INTEGER,
    FOREIGN KEY (meals_id) REFERENCES meals(id)
)