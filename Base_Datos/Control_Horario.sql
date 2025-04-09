-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.41 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para control_horario
CREATE DATABASE IF NOT EXISTS `control_horario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `control_horario`;

-- Volcando estructura para tabla control_horario.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int NOT NULL,
  `Personas_id` int DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleados_personas` (`Personas_id`),
  CONSTRAINT `fk_empleados_personas` FOREIGN KEY (`Personas_id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.empleados: ~5 rows (aproximadamente)
INSERT INTO `empleados` (`id`, `Personas_id`, `Cargo`) VALUES
	(1, 5, 'GERENTE'),
	(2, 1, 'TESORERO'),
	(3, 4, 'DIRECTOR DE INFORMATICA'),
	(4, 3, 'DIRECTORA RECURSOS HUMANOS'),
	(5, 5, 'PRESIDENTE');

-- Volcando estructura para tabla control_horario.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `EDAD` int DEFAULT NULL,
  `GENERO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.personas: ~5 rows (aproximadamente)
INSERT INTO `personas` (`id`, `NOMBRE`, `EDAD`, `GENERO`) VALUES
	(1, 'ELMER ROMARIO', 23, 'MASCULINO'),
	(2, 'ISAIAS RODAS', 35, 'MASCULINO'),
	(3, 'LUZ MAGALLON', 20, 'FEMENINO'),
	(4, 'MARIO CORTEZ', 19, 'MASCULINO'),
	(5, 'JOSIAS CORTEZ', 21, 'MASCULINO');

-- Volcando estructura para tabla control_horario.registros
CREATE TABLE IF NOT EXISTS `registros` (
  `id` int NOT NULL,
  `Empleado_id` int DEFAULT NULL,
  `Hora_Entrada` time DEFAULT NULL,
  `Hora_Salida` time DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registros_empleados` (`Empleado_id`),
  CONSTRAINT `fk_registros_empleados` FOREIGN KEY (`Empleado_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla control_horario.registros: ~25 rows (aproximadamente)
INSERT INTO `registros` (`id`, `Empleado_id`, `Hora_Entrada`, `Hora_Salida`, `Fecha`) VALUES
	(1, 1, '07:45:00', '16:10:47', '2025-04-04'),
	(2, 5, '07:57:00', '16:11:48', '2025-04-04'),
	(3, 3, '07:58:00', '16:10:23', '2025-04-04'),
	(4, 4, '07:59:00', '16:35:00', '2025-04-04'),
	(5, 2, '07:59:28', '16:05:39', '2025-04-04'),
	(6, 1, '07:40:26', '16:36:36', '2025-04-05'),
	(7, 2, '07:42:02', '16:37:11', '2025-04-05'),
	(8, 3, '07:45:35', '16:37:43', '2025-04-05'),
	(9, 4, '07:47:06', '16:38:23', '2025-04-05'),
	(10, 5, '07:47:49', '16:38:59', '2025-04-05'),
	(11, 5, '07:50:33', '16:39:39', '2025-04-06'),
	(12, 4, '07:51:59', '16:40:12', '2025-04-06'),
	(13, 3, '07:52:58', '16:41:06', '2025-04-06'),
	(14, 2, '07:53:39', '16:41:46', '2025-04-06'),
	(15, 1, '07:54:09', '16:42:17', '2025-04-06'),
	(16, 4, '07:42:46', '16:42:51', '2025-04-07'),
	(17, 1, '07:43:14', '16:43:20', '2025-04-07'),
	(18, 5, '07:43:40', '16:43:44', '2025-04-07'),
	(19, 2, '07:44:07', '16:44:12', '2025-04-07'),
	(20, 3, '07:44:45', '16:44:50', '2025-04-07'),
	(21, 1, '07:45:38', '16:45:43', '2025-04-08'),
	(22, 2, '07:46:02', '16:46:08', '2025-04-08'),
	(23, 3, '07:46:28', '16:46:32', '2025-04-08'),
	(24, 4, '07:46:55', '16:47:00', '2025-04-08'),
	(25, 5, '07:47:21', '16:47:26', '2025-04-08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
