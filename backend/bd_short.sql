-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2023 a las 21:50:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_short`
--
CREATE DATABASE IF NOT EXISTS `bd_short` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_short`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `feedback_user_id` bigint(20) NOT NULL,
  `feedback_text` text NOT NULL,
  `feedback_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `feedback_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback_user_id`, `feedback_text`, `feedback_date`, `feedback_status`) VALUES
(1, 2, 1, 'No nos dirige la palabra los días que pierde el Real  Madrid, pero por lo demás programa bien', '2023-06-01 08:58:59', 1),
(2, 1, 2, 'Tiene mal gusto eligiendo equipos de fútbol, pero se le da bien prestar código para validaciones', '2023-06-01 09:00:10', 1),
(3, 3, 1, 'Pone en su CV que es developer Senior, pero se le nota que es Junior, aunque solo sea por el hecho de que tiene 3 semanas de experiencia laboral en tecnológicas', '2023-06-01 09:01:49', 1),
(4, 1, 3, 'Se pasa el día revisando los perfiles laborales de los demás, en vez de codear. Por lo demás, muy buen developer', '2023-06-01 09:02:58', 1),
(5, 4, 1, 'Tenía un problema mi perro de lombrices, y consiguió arreglar el problema con un middleware. Eso dice mucho de su flexividad laboral.', '2023-06-01 09:04:22', 1),
(6, 1, 4, 'Le gustan los perros, trabajar en equipo, y delegar tareas que van más allá de lo posimposible porque confía en que puedes con ello', '2023-06-01 09:06:11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `friends`
--

CREATE TABLE `friends` (
  `friend_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `friend_status` varchar(20) NOT NULL DEFAULT 'pending',
  `friend_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `friends`
--

INSERT INTO `friends` (`friend_id`, `user_id`, `friend_user_id`, `friend_status`, `friend_time`) VALUES
(1, 2, 1, 'accepted', '2023-05-07 12:01:27'),
(2, 3, 1, 'accepted', '2023-05-07 12:01:27'),
(3, 1, 4, 'accepted', '2023-05-07 12:47:23'),
(4, 5, 1, 'rejected', '2023-05-07 12:48:06'),
(5, 9, 1, 'pending', '2023-06-01 19:45:25'),
(6, 12, 1, 'pending', '2023-06-01 19:45:25'),
(7, 3, 0, 'pending', '2023-06-01 19:47:59'),
(8, 0, 4, 'pending', '2023-06-01 19:47:59'),
(9, 0, 1, 'pending', '2023-06-01 19:48:02'),
(10, 11, 0, 'pending', '2023-06-01 19:48:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `date`, `body`) VALUES
(1, 2, '2023-04-26 13:45:57', '¡¡Cómo echo de menos los tiempos de flash!!'),
(2, 3, '2023-04-26 13:45:01', 'Muy pronto todo backend de todo proyecto se hará con javascript... y lo sabéis'),
(3, 4, '2023-04-26 13:47:02', 'Dentro de nada me voy a comprar una 4090 para jugar al Fornite con Ray Tracing'),
(4, 5, '2023-04-26 13:48:43', 'No sé como aguantaría sin que me despidieran si no me dejaran usar Canva'),
(5, 1, '2023-05-23 07:49:09', '\"¡Enfrentando a la amenaza alienígena una vez más! 💪💥 #Alien #Ripley #Survivor\"'),
(6, 14, '2023-06-01 08:49:05', 'Lo que más me gusta de la informática es lo repetitiva que es: larga vida a C y las bases de datos pares clave-valor'),
(7, 11, '2023-06-01 08:50:34', 'Los desarrolladores de frontend son gente que por naturaleza generan trastorno obsesivo compulsivo'),
(8, 18, '2023-06-01 08:51:40', 'Yo solo salgo con hombres que sepan cocinar y programar en java, es lo que hay'),
(9, 1, '2023-06-01 08:52:17', 'Aliens es una película sobrevalorada'),
(10, 5, '2023-06-01 08:54:10', '\"El mundo sería más duro sin los valores judeodristianos y los motores de búsqueda\" esa era la respuesta correcta en la repesca de Bases de datos'),
(11, 6, '2023-06-01 08:55:26', 'Quien no conoce a Python a cualquier santo le programa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_likes`
--

CREATE TABLE `post_likes` (
  `like_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `like_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `post_likes`
--

INSERT INTO `post_likes` (`like_id`, `post_id`, `user_id`, `like_status`) VALUES
(1, 3, 1, 1),
(2, 4, 2, 1),
(3, 4, 3, 1),
(4, 5, 2, 1),
(5, 5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `alias` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `linkedIn` varchar(150) NOT NULL,
  `education` varchar(50) NOT NULL,
  `extra_knowledge` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'users/default.jpg',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `alias`, `name`, `surname`, `email`, `password`, `birthday`, `country`, `city`, `linkedIn`, `education`, `extra_knowledge`, `image`, `is_admin`) VALUES
(0, 'Admin', 'Admin', 'Admin', 'admin@gmail.com', 'adminAdmin', '2025-05-29', 'España', 'Gijón', '', 'Universidad', '', 'users/default.jpg', 1),
(1, 'Exterminadora de aliens', 'Ellen', 'Ripley', 'alien@gmail.com', '1234', '2092-01-07', 'Estados Unidos', 'New York', 'linkedin.com/in/ripley', 'Fuerzas armadas', 'Inglés B2', 'users/user_1.jpg', 0),
(2, 'TechGeek92', 'Juan', 'Pérez', 'agonzalez@gmail.com', '12341', '1985-08-10', 'México', 'Ciudad de México', 'linkedin.com/in/alejandrogonzalez', ' Licenciatura en Administración de Empresas', 'Inglés B2 y Francés A2', 'users/user_2.jpg', 0),
(3, 'TechGeek', 'Sofía', 'García', 'sofia.garcia@hotmail.com', '12342', '1992-03-22', 'España', 'Barcelona', 'linkedin.com/in/sofiagarcia', 'Grado en Ingeniería Informática', 'Google Developer Expert', 'users/user_3.jpg', 0),
(4, 'TheArtist', 'Camilo', 'Rodríguez', 'camilorodriguez@gmail.com', '12343', '1998-11-02', 'Argentina', 'Buenos Aires', 'linkedin.com/in/camilarodriguez', 'Licenciatura en Bellas Artes', 'Certificado de Bellas Artes (CFA) New York Academy of Art', 'users/user_4.jpg', 0),
(5, 'TheAthlete', 'Juan', 'López', 'juan.lopez@hotmail.com', '12344', '1996-06-14', 'Colombia', 'Bogotá', 'linkedin.com/in/juanlopez', 'Licenciatura en Educación Física', 'Certificado de Profesionalidad oficial de Instrucción en Yoga', 'users/user_5.jpg', 0),
(6, 'TheWriter', 'Diego', 'Sánchez', 'diegosanchez@yahoo.com', '12345', '1987-12-05', 'México', 'Guadalajara', 'linkedin.com/in/diegosanchez', 'Licenciatura en Letras Hispánicas', 'Curso monográfico El Quijote', 'users/user_6.jpg', 0),
(7, 'TheDoctor', 'Ana', 'Pérez', 'anaperez@gmail.com', '12346', '1983-04-11', 'España', 'Madrid', 'linkedin.com/in/anaperez', 'Licenciatura en Medicina', 'Máster Integración del Conocimiento Médico y aplicación a la resolución de problemas clínicos', 'users/user_7.jpg', 0),
(8, 'TheDesigner', 'Francisco', 'Reyes', 'franciscoreyes@yahoo.com', '12347', '1994-07-27', 'Argentina', 'Córdoba', 'linkedin.com/in/franciscoreyes', 'Licenciatura en Diseño Gráfico', 'Dreamweaver, Photoshop, Flash y Premiere', 'users/user_8.jpg', 0),
(9, 'TheTeacher', 'Gabriela', 'Morales', 'gabrielamorales@hotmail.com', '12348', '1991-02-14', 'México', 'Monterrey', 'linkedin.com/in/gabrielamorales', 'Licenciatura en Pedagogía', 'Certificación ISTE', 'users/user_9.jpg', 0),
(10, 'TheConsultant', 'Alejandro', 'García', 'alejandrogarcia@gmail.com', '12349', '1989-09-03', 'Colombia', 'Medellín', 'linkedin.com/in/alejandrogarcia', 'Maestría en Administración', 'Business Administration Certificate Portage College', 'users/user_10.jpg', 0),
(11, 'Carlamar', 'Carla María', 'Rodríguez Pérez', 'carlamar@gmail.com', '1591', '1968-10-01', 'España', 'Burgos', 'linkedin.com/in/Carlamar', 'Grado en Ciencias de la Salud', 'Cursos de primeros auxilios ALACC Health College Australia', 'users/user_11.jpg', 0),
(12, 'Maripili', 'María del Pilar', 'Díaz Díaz', 'maripili@gmail.com', '1592', '2000-02-15', 'España', 'Madrid', 'linkedin.com/in/maripili', 'Bachillerato científico-tecnológico', 'Inglés B1', 'users/user_12.jpg', 0),
(13, 'leoromero', 'Leo', 'Romero Sánchez', 'leoromero@gmail.com', '1593', '1965-09-01', 'Argentina', 'Buenos Aires', 'linkedin.com/in/leoromero', 'Psicología ', 'Experto en Mindfullness', 'users/user_13.jpg', 0),
(14, 'Antonito', 'Antonio José', 'Baeza Méndez', 'tonibaeza@gmail.com', '1594', '1973-05-03', 'España', 'Sevilla', 'linkedin.com/in/tonibaeza', 'Administración y gestión de empresas', 'Dirección de RRHH', 'users/user_14.jpg', 0),
(15, 'Cristianbilbao', 'Cristian', 'Bilbao', 'cristianb@gmail.com', '1595', '1998-03-09', 'España', 'Palencia', 'linkedin.com/in/CristianBilbao', 'Ciencias de la salud', 'Estudios para pruebas diagnósticas y factores pronósticos', 'users/user_15.jpg', 0),
(16, 'Farukbb', 'Faruk', 'Ben Barek', 'farukbb@gmail.com', '1596', '1999-04-01', 'España', 'Ceuta', 'inkedin.com/in/farukbb', 'Económicas', 'Econometría y estadística', 'users/user_16.jpg', 0),
(17, 'Carlitos', 'Carlos', 'Alcántara Fernández', 'carlitos@gmail.com', '1597', '1990-03-04', 'España', 'Sagrillas', 'linkedin.com/in/carlosalcantara', 'FP Imagen y sonido', 'Inglés B2 y Alemán A2', 'users/user_17.jpg', 0),
(18, 'Danna', 'Daniela', 'López Aguilar', 'danna@gmail.com', '1598', '2000-03-07', 'México', 'Monterrey', 'linkedin.com/in/Dannalopez', 'Grado en Historia', 'Historia del Arte: Del Arte Prehistórico al Renacimiento', 'users/user_18.jpg', 0),
(19, 'Miacolucci', 'Mia', 'Colucci ', 'miacolucci@gmail.com', '1599', '1999-01-01', 'México', 'México DF', 'linkedin.com/in/MiaColucci', 'Finanzas ', 'Auditoría de Cuentas', 'users/user_19.jpg', 0),
(20, 'Dulcemaria', 'Dulce María', 'Espinosa Saviñón', 'dulcemaria@gmail.com', '1560', '1978-06-09', 'México', 'Ciudad de México ', 'linkedin.com/in/Dulcemaria', 'Postgrado en Arte contemporáneo', 'Arte y actividad: Estrategias interactivas para interactuar con el arte', 'users/user_20.jpg', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `feedback_user_id` (`feedback_user_id`);

--
-- Indices de la tabla `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friend_id`),
  ADD KEY `user_id` (`user_id`,`friend_user_id`),
  ADD KEY `follow_user_id` (`friend_user_id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `post_id` (`post_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `friends`
--
ALTER TABLE `friends`
  MODIFY `friend_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `like_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`feedback_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
