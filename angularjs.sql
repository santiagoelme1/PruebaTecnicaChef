-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2018 a las 16:49:55
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `angularjs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `autor` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `nombre`, `descripcion`, `autor`, `avatar`, `likes`) VALUES
(1, 'Purple Man', 'Formerly Purple Children (leader and father), Villains for Hire, Hoods gang, partner of Electro, his own band of criminals', 'Marvel Comics', 'img/heroes/heroe1.jpg', 16),
(2, 'Jyn Erso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo, mi sit amet interdum condimentum, ex lectus egestas erat.', 'George Lucas', 'img/heroes/heroe2.jpg', 24),
(3, 'Black Flash', 'Maecenas eget nibh eget ante congue tempor eget ac mauris. In vestibulum justo tellus, nisi bibendum sit amet.', 'DC Comics', 'img/heroes/heroe3.jpg', 23),
(4, 'Azrael', 'Order of St. Dumas; formerly Gotham City Police Department; Three Ghosts of Batman', 'DC Comics', 'img/heroes/heroe4.jpg', 35),
(5, 'Namorita', 'Formerly Council of Three, New Warriors, Fantastic Four, Soldiers of Misfortune, Water Children', 'Marvel Comics', 'img/heroes/heroe5.jpg', 35),
(6, 'Elektra', 'S.H.I.E.L.D. formerly Thunderbolts, Hand, Chaste, Heroes For Hire, Code Red, partner of Daredevil and Deadpool', 'Marvel Comics', 'img/heroes/heroe6.jpg', 31),
(7, 'Guy Gardner', 'Green Lantern Corps, Formerly Justice League of America', 'DC Comics', 'img/heroes/heroe7.jpg', 3),
(8, 'Hela', '', 'Marvel Comics', 'img/heroes/heroe8.jpg', 3),
(9, 'Kylo Ren', '', 'George Lucas', 'img/heroes/heroe9.jpg', 0),
(10, 'Machine Man', 'Avengers', 'Marvel Comics', 'img/heroes/heroe10.jpg', 0),
(11, 'Bullseye', 'Formerly Dark Avengers, Thunderbolts, employee of Kingpin, Purple Man, Eric Slaughter, Mysterio; formerly US Army', 'Marvel Comics', 'img/heroes/heroe11.jpg', 0),
(12, 'Cecilia Reyes', 'X-Men', 'Marvel Comics', 'img/heroes/heroe12.jpg', 1),
(13, 'Man-Thing', 'Thunderbolts, Legion of Monsters, Daydreamers', 'Marvel Comics', 'img/heroes/heroe13.jpg', 0),
(14, 'Nova', 'Nova Corps formely United Front (Leader), New Warriors, Champions of Xandar, Secret Defenders, Defender for a day', 'Marvel Comics', 'img/heroes/heroe14.jpg', 1),
(15, 'Flash Gordon', '', 'null', 'img/heroes/heroe15.jpg', 1),
(16, 'Doc Samson', '', 'Marvel Comics', 'img/heroes/heroe16.jpg', 0),
(17, 'Chuck Norris', '', 'null', 'img/heroes/heroe17.jpg', 0),
(18, 'Shadow King', 'Shadow Mob; former head of the Gladiators and the Cairo?s Thieves Quarter', 'Marvel Comics', 'img/heroes/heroe18.jpg', 0),
(19, 'Mister Fantastic', 'Fantastic Four', 'Marvel Comics', 'img/heroes/heroe19.jpg', 0),
(20, 'Stormtrooper', '', 'George Lucas', 'img/heroes/heroe20.jpg', 0),
(21, 'Plastic Lad', '', 'DC Comics', 'img/heroes/heroe21.jpg', 0),
(22, 'Man of Miracles', '', 'Image Comics', 'img/heroes/heroe22.jpg', 0),
(23, 'Atom IV', 'Lighter Than Air Society', 'DC Comics', 'img/heroes/heroe23.jpg', 0),
(24, 'Robin III', 'Teen Titans, Batman Family, Batman Inc., Wayne Enterprises; formerly Young Justice', 'Red Robin', 'img/heroes/heroe24.jpg', 0),
(25, 'Jolt', 'Young Allies; formerly Redeemers, Thunderbolts', 'Marvel Comics', 'img/heroes/heroe25.jpg', 0),
(26, 'Faora', 'Phantom Zone Criminals', 'DC Comics', 'img/heroes/heroe26.jpg', 0),
(27, 'Giant-Man II', '', 'Marvel Comics', 'img/heroes/heroe27.jpg', 0),
(28, 'Lex Luthor', 'Injustice Gang, Injustice League, Society of Supervillains', 'DC Comics', 'img/heroes/heroe28.jpg', 0),
(29, 'Black Canary', 'Birds of Prey; formerly Justice League of America, Justice Society of America, Justice League Task Force, Justice League International, Team Arrow', 'DC Comics', 'img/heroes/heroe29.jpg', 0),
(30, 'King Kong', '', '', 'img/heroes/heroe30.jpg', 0),
(31, 'Shadow Lass', '', 'DC Comics', 'img/heroes/heroe31.jpg', 0),
(32, 'Redeemer III', '', 'Image Comics', 'img/heroes/heroe32.jpg', 0),
(33, 'Kang', 'Formerly the Council of Kangs, Cross-Time Kangs', 'Iron Lad', 'img/heroes/heroe33.jpg', 0),
(34, 'Deathlok', 'Former member of the CIA, Project: Alpha-Mech, US Army, ally of Godwulfs Redeemers', 'Marvel Comics', 'img/heroes/heroe34.jpg', 0),
(35, 'Cyborg', 'Justice League; formerly Teen Titans, Titans, Titans East, New Teen Titans', 'DC Comics', 'img/heroes/heroe35.jpg', 0),
(36, 'Gladiator', 'Galactic Council, Annihilators; formerly Imperial Guard; possibly Heralds of Galactus', 'Marvel Comics', 'img/heroes/heroe36.jpg', 0),
(37, 'Rogue', 'X-Men, formerly X-Treme Sanctions Executive, X-Treme X-Men, Brotherhood of Evil Mutants', 'Marvel Comics', 'img/heroes/heroe37.jpg', 0),
(38, 'Master Brood', 'Team Epic', 'Team Epic TV', 'img/heroes/heroe38.jpg', 1),
(39, 'Alex Mercer', 'Gentek, The Infected', 'Wildstorm', 'img/heroes/heroe39.jpg', 0),
(40, 'Sif', 'The Gods of Asgard', 'Marvel Comics', 'img/heroes/heroe40.jpg', 0),
(41, 'Captain Atom', 'Justice League, Extreme Justice, Super Buddies, Living Assault Weapons, Monarchs Army, United States Air Force', 'DC Comics', 'img/heroes/heroe41.jpg', 0),
(42, 'Maxima', 'Justice League Task Force, Extreme Justice', 'DC Comics', 'img/heroes/heroe42.jpg', 0),
(43, 'Hawkwoman III', '', 'DC Comics', 'img/heroes/heroe43.jpg', 0),
(44, 'Ajax', 'Formerly Weapon X', 'Marvel Comics', 'img/heroes/heroe44.jpg', 0),
(45, 'Darkside', '', 'null', 'img/heroes/heroe45.jpg', 0),
(46, 'Nick Fury', 'Secret Avengers, SHIELD (both incarnations); formerly Team Valkyrie, C.I.A., liaison to MI-5, O.S.S., Howling Commandos, U.S. Army', 'Marvel Comics', 'img/heroes/heroe46.jpg', 0),
(47, 'Brainiac', 'Lex Luthor', 'DC Comics', 'img/heroes/heroe47.jpg', 0),
(48, 'Evil Deadpool', 'Evil Deadpool Cor', 'Deadpool', 'img/heroes/heroe48.jpg', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
