-- uses MySQL syntax
CREATE DATABASE COOKPAD;

USE COOKPAD;

-- Table of menus
CREATE TABLE MENUS (
    `ID` INT NOT NULL, -- primary key
    `NAME` varchar(255), -- name of the menu
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY(ID)
);

-- Join table connecting MENUS to RECIPES
CREATE TABLE MENU_RECIPIE (
    `ID` INT NOT NULL, -- primary key
    `MENU_ID` INT NOT NULL, -- id from MENUS table
    `RECIPIE_ID` INT NOT NULL, -- id from RECIPIES table
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY(ID),
    FOREIGN KEY MENU_ID REFERENCES MENUS(ID),
    FOREIGN KEY RECIPIE_ID REFERENCES RECIPIES(ID)
);

-- Table of recipe information
CREATE TABLE RECIPES (
    `ID` INT NOT NULL, -- primary key
    `NAME` varchar(255) NOT NULL, -- name of recipe
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY(ID)
);

-- One ingredient may be used by multiple recipes. Instead of storing the
-- ingredient name multiple times, we store the ingredients in a separate table
-- and then use a join table to join the recipe to ingredients
CREATE TABLE INGREDIENTS (
    `ID` INT NOT NULL, -- primary key
    `NAME` varchar(255) NOT NULL, -- name of ingredient
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY(ID)
);

-- Join table joining RECIPE to INGREDIENTS, including the amount of each
-- ingredient
CREATE TABLE RECIPE_INGREDIENT (
    `ID` INT NOT NULL, --primary key
    `RECIPE_ID` int, -- foreign key to RECIPIES table
    `INGREDIENT_ID` int, -- foreign key to INGREDIENTS table
    `AMOUNT` int, -- amount of the ingredient for that recipe
    `UNIT` varchar(10), -- unit referenced by the AMOUNT column
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY (ID),
    FOREIGN KEY RECIPIE_ID REFERENCES RECIPES(ID),
    FOREIGN KEY INGREDIENT_ID REFERENCES INGREDIENTS(ID)
);

-- Contains the instructions and joins against RECIPES table
CREATE TABLE INSTRUCTIONS (
    `ID` INT NOT NULL, -- primary key
    `INSTRUCTION_ORDER` INT, -- the order of the instruction
    `INSTRUCTION` varchar(255) -- the text of the instruction
    `RECIPIE_ID` int,
    `CREATED_AT` datetime NOT NULL DEFAULT '2000-01-01 00:00:00', -- when record was created
    `LAST_MODIFIED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- when record was last updated
    PRIMARY KEY(ID),
    FOREIGN KEY RECIPIE_ID REFERENCES RECIPES
);

