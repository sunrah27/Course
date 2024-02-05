CREATE DATABASE IF NOT EXISTS livingdexDB;

USE livingdexDB;

-- Games Table
CREATE TABLE IF NOT EXISTS Games (
    game_id INT PRIMARY KEY,
    game_name VARCHAR(255) NOT NULL,
    generation INT
);

-- Types Table
CREATE TABLE IF NOT EXISTS Types (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

-- PokemonTypes Table (Junction Table)
CREATE TABLE IF NOT EXISTS PokemonTypes (
    pokemon_id INT,
    type_id INT,
    PRIMARY KEY (pokemon_id, type_id)
);

-- Pokemons Table
CREATE TABLE IF NOT EXISTS Pokemons (
    pokemon_id INT PRIMARY KEY,
    pokemon_name VARCHAR(255) NOT NULL,
    primary_type_id INT,
    secondary_type_id INT
);

-- ObtainedPokemons Table
CREATE TABLE IF NOT EXISTS ObtainedPokemons (
    obtained_id INT PRIMARY KEY,
    game_id INT,
    pokemon_id INT,
    obtained_method VARCHAR(50),
    is_shiny BOOLEAN
);

-- Evolutions Table
CREATE TABLE IF NOT EXISTS Evolutions (
    evolution_id INT PRIMARY KEY,
    from_pokemon_id INT,
    to_pokemon_id INT,
    evolution_method VARCHAR(50),
    required_level INT,
    required_item VARCHAR(50),
    required_affection INT,
    required_trade BOOLEAN,
    required_trade_item VARCHAR(50),
    required_location VARCHAR(255),
    required_time_of_day VARCHAR(20),
    is_special_condition BOOLEAN
);

-- Breeding Table
CREATE TABLE IF NOT EXISTS BreedingPokemons (
    breeding_id INT PRIMARY KEY,
    pokemon_id INT
);

-- Gender Table
CREATE TABLE IF NOT EXISTS PokemonGenders (
    gender_id INT PRIMARY KEY,
    gender_name VARCHAR(10) NOT NULL
);

-- Gender Differences Table
CREATE TABLE IF NOT EXISTS GenderDifferences (
    difference_id INT PRIMARY KEY,
    pokemon_id INT,
    gender_id INT,
    sprite_path VARCHAR(255)
);

-- PokemonForms Table
CREATE TABLE IF NOT EXISTS PokemonForms (
    form_id INT PRIMARY KEY,
    pokemon_id INT,
    form_name VARCHAR(50) NOT NULL
);

-- ShinyPokemons Table
CREATE TABLE IF NOT EXISTS ShinyPokemons (
    shiny_id INT PRIMARY KEY,
    pokemon_id INT,
    obtained_method VARCHAR(50)
    -- Add other relevant fields
);

-- Users Table
CREATE TABLE IF NOT EXISTS Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hashed_password VARCHAR(255) NOT NULL
);

-- UserProgress Table
CREATE TABLE IF NOT EXISTS UserProgress (
    progress_id INT PRIMARY KEY,
    user_id INT,
    obtained_id INT,
    is_obtained BOOLEAN
);

-- PokedexRequirements Table
CREATE TABLE IF NOT EXISTS PokedexRequirements (
    requirement_id INT PRIMARY KEY,
    user_id INT,
    game_id INT,
    pokemon_id INT,
    form_name VARCHAR(50) NOT NULL
);

-- Add Foreign Keys using ALTER TABLE
ALTER TABLE PokemonTypes 
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id),
    ADD FOREIGN KEY (type_id) REFERENCES Types(type_id);

ALTER TABLE Pokemons
    ADD FOREIGN KEY (primary_type_id) REFERENCES Types(type_id),
    ADD FOREIGN KEY (secondary_type_id) REFERENCES Types(type_id);

ALTER TABLE ObtainedPokemons
    ADD FOREIGN KEY (game_id) REFERENCES Games(game_id),
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id);

ALTER TABLE Evolutions
    ADD FOREIGN KEY (from_pokemon_id) REFERENCES Pokemons(pokemon_id),
    ADD FOREIGN KEY (to_pokemon_id) REFERENCES Pokemons(pokemon_id);

ALTER TABLE BreedingPokemons
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id);

ALTER TABLE GenderDifferences
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id),
    ADD FOREIGN KEY (gender_id) REFERENCES PokemonGenders(gender_id);

ALTER TABLE PokemonForms
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id);

ALTER TABLE ShinyPokemons
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id);

ALTER TABLE UserProgress
    ADD FOREIGN KEY (user_id) REFERENCES Users(user_id),
    ADD FOREIGN KEY (obtained_id) REFERENCES ObtainedPokemons(obtained_id);

ALTER TABLE PokedexRequirements
    ADD FOREIGN KEY (user_id) REFERENCES Users(user_id),
    ADD FOREIGN KEY (game_id) REFERENCES Games(game_id),
    ADD FOREIGN KEY (pokemon_id) REFERENCES Pokemons(pokemon_id);

-- Data input 
-- 
-- Insert data into Games table
INSERT INTO Games (game_id, game_name, generation) VALUES
(1, 'Pokémon Red', 1),
(2, 'Pokémon Blue', 1),
(3, 'Pokémon Yellow', 1),
(4, 'Pokémon Gold', 2),
(5, 'Pokémon Silver', 2),
(6, 'Pokémon Crystal', 2),
(7, 'Pokémon Ruby', 3),
(8, 'Pokémon Sapphire', 3),
(9, 'Pokémon Emerald', 3),
(10, 'Pokémon FireRed', 3),
(11, 'Pokémon LeafGreen', 3),
(12, 'Pokémon Diamond', 4),
(13, 'Pokémon Pearl', 4),
(14, 'Pokémon Platinum', 4),
(15, 'Pokémon HeartGold', 4),
(16, 'Pokémon SoulSilver', 4),
(17, 'Pokémon Black', 5),
(18, 'Pokémon White', 5),
(19, 'Pokémon Black 2', 5),
(20, 'Pokémon White 2', 5),
(21, 'Pokémon X', 6),
(22, 'Pokémon Y', 6),
(23, 'Pokémon Omega Ruby', 6),
(24, 'Pokémon Alpha Sapphire', 6),
(25, 'Pokémon Sun', 7),
(26, 'Pokémon Moon', 7),
(27, 'Pokémon Ultra Sun', 7),
(28, 'Pokémon Ultra Moon', 7),
(29, 'Pokémon Let\'s Go, Pikachu!', 7),
(30, 'Pokémon Let\'s Go, Eevee!', 7),
(31, 'Pokémon Sword', 8),
(32, 'Pokémon Shield', 8),
(33, 'Pokémon Brilliant Diamond', 8),
(34, 'Pokémon Shining Pearl', 8),
(35, 'Pokémon Legends: Arceus', 8);

-- Insert data into Types table
INSERT INTO Types (type_id, type_name) VALUES
(1, 'Normal'),
(2, 'Fire'),
(3, 'Water'),
(4, 'Electric'),
(5, 'Grass'),
(6, 'Ice'),
(7, 'Fighting'),
(8, 'Poison'),
(9, 'Ground'),
(10, 'Flying'),
(11, 'Psychic'),
(12, 'Bug'),
(13, 'Rock'),
(14, 'Ghost'),
(15, 'Dragon'),
(16, 'Dark'),
(17, 'Steel'),
(18, 'Fairy');

-- Insert data into PokemonTypes table
INSERT INTO PokemonTypes (pokemon_id, type_id) VALUES
(1, 5), (1, 8), (2, 5), (2, 8), (3, 5), (3, 8), (4, 2), (5, 2), (6, 2), (6, 10), (7, 3), (8, 3), (9, 3), (9, 16), (10, 12), (11, 12), (12, 12), (12, 10), (13, 12), (14, 12), (15, 12), (16, 1), (16, 10), (17, 1), (17, 10), (18, 1), (18, 10), (19, 1), (20, 1), (21, 1), (21, 10), (22, 1), (22, 10), (23, 8), (24, 8), (25, 4), (26, 4), (27, 9), (28, 9), (29, 8), (30, 8), (31, 8), (31, 9), (32, 8), (33, 8), (34, 8), (34, 9), (35, 18), (36, 18), (37, 2), (38, 2), (39, 1), (39, 18), (40, 1), (40, 18),(41, 8), (41, 10),(42, 8), (42, 10),(43, 5), (43, 8),(44, ), (44, 8),(45, 5), (45, 8),(46, 12), (46, 5),(47, 12), (47, 5),(48, 12), (48, 8),(49, 2), (49, 8),(50, 9),(51, 9),(52, 1),(53, 1),(54, 3),(55, 3),(56, 7),(57, 7),(58, 2),(59, 2),(60, 3),(61, 3),(62, 3), (62, 7),(63, 11),(64, 11),(65, 11),(66, 7),(67, 7),(68, 7),(69, 5), (69, 8),(70, 5), (70, 8),(71, 5), (71, 8),(72, 3), (72, 8),(73, 3), (73, 8),(74, 13), (74, 9),(75, 13), (75, 9),(76, 13), (76, 9),(77, 2),(78, 2),(79, 3), (79, 11),(80, 3), (80, 11),(81, ), (81, 17),(82, 4), (82, 17),(83, 1), (83, 10),(84, 1), (84, 10),(85, 1), (85, 10),(86, ),(87, 3), (87, 6),(88, 8),(89, 8),(90, 3),(91, 3), (91, 6),(92, 14), (92, 8),(93, 14), (93, 8),(94, 14), (94, 8),(95, 13), (95, 9),(96, 11),(97, 11),(98, 3),(99, 3),(100, 4),(101, ),(102, 5), (102, 11),(103, 5), (103, 11),(104, 9),(105, 9),(106, 7),(107, 7),(108, 1),(109, 8),(110, 8),(111, 9), (111, 13),(112, 9), (112, 13),(113, 1),(114, 5),(115, 1),(116, 3),(117, 3),(118, 3),(119, 3),(120, 3),(121, 3), (121, 11),(122, 11), (122, 18),(123, 12), (123, 10),(124, ), (124, 11),(125, 4),(126, 2),(127, 12),(128, 1),(129, 3),(130, 3), (130, 10),(131, 3), (131, 6),(132, 1),(133, 1),(134, 3),(135, 4),(136, 2),(137, 1),(138, 13), (138, 3),(139, 13), (139, 3),(140, 13), (140, 3),(141, 13), (141, 3),(142, 13), (142, 10),(143, 1),(144, 6), (144, 0),(145, 4), (145, 10),(146, 2), (146, 10),(147, 15),(148, 15),(149, 15), (149, 10),(150, 11),(151, 11);

