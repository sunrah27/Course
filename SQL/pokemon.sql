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

--
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


Certainly! Let's proceed with adding data for the Types table. After running this script, you'll be able to confirm the data before moving on to the next table.

sql
Copy code
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
INSERT INTO PokemonTypes (pokemon_id, type_id) VALUES
-- Pokémon 1 (Bulbasaur) - Grass and Poison
(1, 5), (1, 8),
-- Pokémon 2 (Ivysaur) - Grass and Poison
(2, 5), (2, 8),
-- Pokémon 3 (Venusaur) - Grass and Poison
(3, 5), (3, 8),
-- Pokémon 4 (Charmander) - Fire
(4, 2),
-- Pokémon 5 (Charmeleon) - Fire
(5, 2),
-- Pokémon 6 (Charizard) - Fire and Flying
(6, 2), (6, 10),
-- Pokémon 7 (Squirtle) - Water
(7, 3),
-- Pokémon 8 (Wartortle) - Water
(8, 3),
-- Pokémon 9 (Blastoise) - Water and Dark
(9, 3), (9, 16),
-- Pokémon 10 (Caterpie) - Bug
(10, 12),
-- Pokémon 11 (Metapod) - Bug
(11, 12),
-- Pokémon 12 (Butterfree) - Bug and Flying
(12, 12), (12, 10),
-- Pokémon 13 (Weedle) - Bug and Poison
(13, 12),
-- Pokémon 14 (Kakuna) - Bug and Poison
(14, 12),
-- Pokémon 15 (Beedrill) - Bug and Poison
(15, 12),
-- Pokémon 16 (Pidgey) - Normal and Flying
(16, 1), (16, 10),
-- Pokémon 17 (Pidgeotto) - Normal and Flying
(17, 1), (17, 10),
-- Pokémon 18 (Pidgeot) - Normal and Flying
(18, 1), (18, 10),
-- Pokémon 19 (Rattata) - Normal
(19, 1),
-- Pokémon 20 (Raticate) - Normal
(20, 1),
-- Pokémon 21 (Spearow) - Normal and Flying
(21, 1), (21, 10),
-- Pokémon 22 (Fearow) - Normal and Flying
(22, 1), (22, 10),
-- Pokémon 23 (Ekans) - Poison
(23, 8),
-- Pokémon 24 (Arbok) - Poison
(24, 8),
-- Pokémon 25 (Pikachu) - Electric
(25, 4),
-- Pokémon 26 (Raichu) - Electric
(26, 4),
-- Pokémon 27 (Sandshrew) - Ground
(27, 9),
-- Pokémon 28 (Sandslash) - Ground
(28, 9),
-- Pokémon 29 (Nidoran♀) - Poison
(29, 8),
-- Pokémon 30 (Nidorina) - Poison
(30, 8),
-- Pokémon 31 (Nidoqueen) - Poison and Ground
(31, 8), (31, 9),
-- Pokémon 32 (Nidoran♂) - Poison
(32, 8),
-- Pokémon 33 (Nidorino) - Poison
(33, 8),
-- Pokémon 34 (Nidoking) - Poison and Ground
(34, 8), (34, 9),
-- Pokémon 35 (Clefairy) - Fairy
(35, 18),
-- Pokémon 36 (Clefable) - Fairy
(36, 18),
-- Pokémon 37 (Vulpix) - Fire
(37, 2),
-- Pokémon 38 (Ninetales) - Fire
(38, 2),
-- Pokémon 39 (Jigglypuff) - Normal and Fairy
(39, 1), (39, 18),
-- Pokémon 40 (Wigglytuff) - Normal and Fairy
(40, 1), (40, 18),
-- Pokémon 41 (Zubat) - Poison and Flying
(41, 8), (41, 10),
-- Pokémon 42 (Golbat) - Poison and Flying
(42, 8), (42, 10),
-- Pokémon 43 (Oddish) - Grass and Poison
(43, 5), (43, 8),
-- Pokémon 44 (Gloom) - Grass and Poison
(44, 5), (44, 8),
-- Pokémon 45 (Vileplume) - Grass and Poison
(45, 5), (45, 8),
-- Pokémon 46 (Paras) - Bug and Grass
(46, 12), (46, 5),
-- Pokémon 47 (Parasect) - Bug and Grass
(47, 12), (47, 5),
-- Pokémon 48 (Venonat) - Bug and Poison
(48, 12), (48, 8),
-- Pokémon 49 (Venomoth) - Bug and Poison
(49, 12), (49, 8),
-- Pokémon 50 (Diglett) - Ground
(50, 9),
-- Pokémon 51 (Dugtrio) - Ground
(51, 9),
-- Pokémon 52 (Meowth) - Normal
(52, 1),
-- Pokémon 53 (Persian) - Normal
(53, 1),
-- Pokémon 54 (Psyduck) - Water
(54, 3),
-- Pokémon 55 (Golduck) - Water
(55, 3),
-- Pokémon 56 (Mankey) - Fighting
(56, 7),
-- Pokémon 57 (Primeape) - Fighting
(57, 7),
-- Pokémon 58 (Growlithe) - Fire
(58, 2),
-- Pokémon 59 (Arcanine) - Fire
(59, 2),
-- Pokémon 60 (Poliwag) - Water
(60, 3),
-- Pokémon 61 (Poliwhirl) - Water
(61, 3),
-- Pokémon 62 (Poliwrath) - Water and Fighting
(62, 3), (62, 7),
-- Pokémon 63 (Abra) - Psychic
(63, 11),
-- Pokémon 64 (Kadabra) - Psychic
(64, 11),
-- Pokémon 65 (Alakazam) - Psychic
(65, 11),
-- Pokémon 66 (Machop) - Fighting
(66, 7),
-- Pokémon 67 (Machoke) - Fighting
(67, 7),
-- Pokémon 68 (Machamp) - Fighting
(68, 7),
-- Pokémon 69 (Bellsprout) - Grass and Poison
(69, 5), (69, 8),
-- Pokémon 70 (Weepinbell) - Grass and Poison
(70, 5), (70, 8),
-- Pokémon 71 (Victreebel) - Grass and Poison
(71, 5), (71, 8),
-- Pokémon 72 (Tentacool) - Water and Poison
(72, 3), (72, 8),
-- Pokémon 73 (Tentacruel) - Water and Poison
(73, 3), (73, 8),
-- Pokémon 74 (Geodude) - Rock and Ground
(74, 13), (74, 9),
-- Pokémon 75 (Graveler) - Rock and Ground
(75, 13), (75, 9),
-- Pokémon 76 (Golem) - Rock and Ground
(76, 13), (76, 9),
-- Pokémon 77 (Ponyta) - Fire
(77, 2),
-- Pokémon 78 (Rapidash) - Fire
(78, 2),
-- Pokémon 79 (Slowpoke) - Water and Psychic
(79, 3), (79, 11),
-- Pokémon 80 (Slowbro) - Water and Psychic
(80, 3), (80, 11),
-- Pokémon 81 (Magnemite) - Electric and Steel
(81, 4), (81, 17),
-- Pokémon 82 (Magneton) - Electric and Steel
(82, 4), (82, 17),
-- Pokémon 83 (Farfetch'd) - Normal and Flying
(83, 1), (83, 10),
-- Pokémon 84 (Doduo) - Normal and Flying
(84, 1), (84, 10),
-- Pokémon 85 (Dodrio) - Normal and Flying
(85, 1), (85, 10),
-- Pokémon 86 (Seel) - Water
(86, 3),
-- Pokémon 87 (Dewgong) - Water and Ice
(87, 3), (87, 6),
-- Pokémon 88 (Grimer) - Poison
(88, 8),
-- Pokémon 89 (Muk) - Poison
(89, 8),
-- Pokémon 90 (Shellder) - Water
(90, 3),
-- Pokémon 91 (Cloyster) - Water and Ice
(91, 3), (91, 6),
-- Pokémon 92 (Gastly) - Ghost and Poison
(92, 14), (92, 8),
-- Pokémon 93 (Haunter) - Ghost and Poison
(93, 14), (93, 8),
-- Pokémon 94 (Gengar) - Ghost and Poison
(94, 14), (94, 8),
-- Pokémon 95 (Onix) - Rock and Ground
(95, 13), (95, 9),
-- Pokémon 96 (Drowzee) - Psychic
(96, 11),
-- Pokémon 97 (Hypno) - Psychic
(97, 11),
-- Pokémon 98 (Krabby) - Water
(98, 3),
-- Pokémon 99 (Kingler) - Water
(99, 3),
-- Pokémon 100 (Voltorb) - Electric
(100, 4),
-- Pokémon 101 (Electrode) - Electric
(101, 4),
-- Pokémon 102 (Exeggcute) - Grass and Psychic
(102, 5), (102, 11),
-- Pokémon 103 (Exeggutor) - Grass and Psychic
(103, 5), (103, 11),
-- Pokémon 104 (Cubone) - Ground
(104, 9),
-- Pokémon 105 (Marowak) - Ground
(105, 9),
-- Pokémon 106 (Hitmonlee) - Fighting
(106, 7),
-- Pokémon 107 (Hitmonchan) - Fighting
(107, 7),
-- Pokémon 108 (Lickitung) - Normal
(108, 1),
-- Pokémon 109 (Koffing) - Poison
(109, 8),
-- Pokémon 110 (Weezing) - Poison
(110, 8),
-- Pokémon 111 (Rhyhorn) - Ground and Rock
(111, 9), (111, 13),
-- Pokémon 112 (Rhydon) - Ground and Rock
(112, 9), (112, 13),
-- Pokémon 113 (Chansey) - Normal
(113, 1),
-- Pokémon 114 (Tangela) - Grass
(114, 5),
-- Pokémon 115 (Kangaskhan) - Normal
(115, 1),
-- Pokémon 116 (Horsea) - Water
(116, 3),
-- Pokémon 117 (Seadra) - Water
(117, 3),
-- Pokémon 118 (Goldeen) - Water
(118, 3),
-- Pokémon 119 (Seaking) - Water
(119, 3),
-- Pokémon 120 (Staryu) - Water
(120, 3),
-- Pokémon 121 (Starmie) - Water and Psychic
(121, 3), (121, 11),
-- Pokémon 122 (Mr. Mime) - Psychic and Fairy
(122, 11), (122, 18),
-- Pokémon 123 (Scyther) - Bug and Flying
(123, 12), (123, 10),
-- Pokémon 124 (Jynx) - Ice and Psychic
(124, 6), (124, 11),
-- Pokémon 125 (Electabuzz) - Electric
(125, 4),
-- Pokémon 126 (Magmar) - Fire
(126, 2),
-- Pokémon 127 (Pinsir) - Bug
(127, 12),
-- Pokémon 128 (Tauros) - Normal
(128, 1),
-- Pokémon 129 (Magikarp) - Water
(129, 3),
-- Pokémon 130 (Gyarados) - Water and Flying
(130, 3), (130, 10),
-- Pokémon 131 (Lapras) - Water and Ice
(131, 3), (131, 6),
-- Pokémon 132 (Ditto) - Normal
(132, 1),
-- Pokémon 133 (Eevee) - Normal
(133, 1),
-- Pokémon 134 (Vaporeon) - Water
(134, 3),
-- Pokémon 135 (Jolteon) - Electric
(135, 4),
-- Pokémon 136 (Flareon) - Fire
(136, 2),
-- Pokémon 137 (Porygon) - Normal
(137, 1),
-- Pokémon 138 (Omanyte) - Rock and Water
(138, 13), (138, 3),
-- Pokémon 139 (Omastar) - Rock and Water
(139, 13), (139, 3),
-- Pokémon 140 (Kabuto) - Rock and Water
(140, 13), (140, 3),
-- Pokémon 141 (Kabutops) - Rock and Water
(141, 13), (141, 3),
-- Pokémon 142 (Aerodactyl) - Rock and Flying
(142, 13), (142, 10),
-- Pokémon 143 (Snorlax) - Normal
(143, 1),
-- Pokémon 144 (Articuno) - Ice and Flying
(144, 6), (144, 10),
-- Pokémon 145 (Zapdos) - Electric and Flying
(145, 4), (145, 10),
-- Pokémon 146 (Moltres) - Fire and Flying
(146, 2), (146, 10),
-- Pokémon 147 (Dratini) - Dragon
(147, 15),
-- Pokémon 148 (Dragonair) - Dragon
(148, 15),
-- Pokémon 149 (Dragonite) - Dragon and Flying
(149, 15), (149, 10),
-- Pokémon 150 (Mewtwo) - Psychic
(150, 11),
-- Pokémon 151 (Mew) - Psychic
(151, 11);

