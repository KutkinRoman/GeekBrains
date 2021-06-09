-- MySQL Script generated by MySQL Workbench
-- Mon May 31 22:33:53 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema datebasespartak
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `datebasespartak` ;

-- -----------------------------------------------------
-- Schema datebasespartak
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `datebasespartak` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `datebasespartak` ;

-- -----------------------------------------------------
-- Table `datebasespartak`.`cashbook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`cashbook` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`cashbook` (
  `numberTransaction` INT NULL DEFAULT NULL,
  `dateTransaction` TEXT NULL DEFAULT NULL,
  `timeTransaction` TEXT NULL DEFAULT NULL,
  `idTransaction` INT NULL DEFAULT NULL,
  `nameTransaction` TEXT NULL DEFAULT NULL,
  `idService` INT NULL DEFAULT NULL,
  `nameService` TEXT NULL DEFAULT NULL,
  `idClient` INT NULL DEFAULT NULL,
  `nameClient` TEXT NULL DEFAULT NULL,
  `idUser` INT NULL DEFAULT NULL,
  `nameUser` TEXT NULL DEFAULT NULL,
  `idTypePayment` INT NULL DEFAULT NULL,
  `nameTypePayment` TEXT NULL DEFAULT NULL,
  `sumCashReceipt` DOUBLE NULL DEFAULT NULL,
  `sumCashConsumption` DOUBLE NULL DEFAULT NULL,
  `sumNonCashReceipt` DOUBLE NULL DEFAULT NULL,
  `sumNonCashConsumption` DOUBLE NULL DEFAULT NULL,
  `sumCashBalanceBegin` DOUBLE NULL DEFAULT NULL,
  `sumNonCashBalanceBegin` DOUBLE NULL DEFAULT NULL,
  `sumAllBalanceBegin` DOUBLE NULL DEFAULT NULL,
  `sumCashBalanceEnd` DOUBLE NULL DEFAULT NULL,
  `sumNonCashBalanceEnd` DOUBLE NULL DEFAULT NULL,
  `sumAllBalanceEnd` DOUBLE NULL DEFAULT NULL,
  `deleteTran` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`clientlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`clientlist` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`clientlist` (
  `id` INT NULL DEFAULT NULL,
  `LastName` TEXT NULL DEFAULT NULL,
  `FirstName` TEXT NULL DEFAULT NULL,
  `PatName` TEXT NULL DEFAULT NULL,
  `Telephone` TEXT NULL DEFAULT NULL,
  `DataBirth` TEXT NULL DEFAULT NULL,
  `Email` TEXT NULL DEFAULT NULL,
  `InfoClient` TEXT NULL DEFAULT NULL,
  `BOOL_DEL` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`config` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`config` (
  `idConfig` INT NULL DEFAULT NULL,
  `nameConfig` TEXT NULL DEFAULT NULL,
  `valConfig` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`historyclients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`historyclients` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`historyclients` (
  `operatinNumber` INT NULL DEFAULT NULL,
  `opirationDate` TEXT NULL DEFAULT NULL,
  `operationTime` TEXT NULL DEFAULT NULL,
  `idUser` INT NULL DEFAULT NULL,
  `nameUser` TEXT NULL DEFAULT NULL,
  `idTrainer` INT NULL DEFAULT NULL,
  `nameTrainer` TEXT NULL DEFAULT NULL,
  `idClient` INT NULL DEFAULT NULL,
  `nameClient` TEXT NULL DEFAULT NULL,
  `idService` INT NULL DEFAULT NULL,
  `nameService` TEXT NULL DEFAULT NULL,
  `numberVisits` INT NULL DEFAULT NULL,
  `termDays` INT NULL DEFAULT NULL,
  `idTypeOperation` INT NULL DEFAULT NULL,
  `nameOperation` INT NULL DEFAULT NULL,
  `numberVisitsRemainder` INT NULL DEFAULT NULL,
  `idTypeClient` INT NULL DEFAULT NULL,
  `delBoolean` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`newidservice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`newidservice` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`newidservice` (
  `nameVal` TEXT NULL DEFAULT NULL,
  `ipVal` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`service_general_values`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`service_general_values` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`service_general_values` (
  `ID_SERVICE` INT NULL DEFAULT NULL,
  `ID_TYPE_SERVICE` INT NULL DEFAULT NULL,
  `ID_GROUP_SERVICE` INT NULL DEFAULT NULL,
  `NAME_SERVICE` TEXT NULL DEFAULT NULL,
  `COST_SERVICE` DOUBLE NULL DEFAULT NULL,
  `NUMBER_VISITS_INT` INT NULL DEFAULT NULL,
  `TERM_DAYS` INT NULL DEFAULT NULL,
  `NUMBER_CLIENT_Traning` INT NULL DEFAULT NULL,
  `BALANCE` INT NULL DEFAULT NULL,
  `DELETE_BOOLEAN` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`serviceprice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`serviceprice` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`serviceprice` (
  `ID_SERVICE` INT NOT NULL AUTO_INCREMENT,
  `ID_TYPE` INT NULL DEFAULT NULL,
  `ID_GROUP` INT NULL DEFAULT NULL,
  `NAME` TEXT NULL DEFAULT NULL,
  `COST` DOUBLE NULL DEFAULT NULL,
  `DELETE_CHECK` TINYINT(1) NULL DEFAULT 0,
  `BALANCE` INT NULL DEFAULT 999999,
  `NUMBER_VISITS` INT NULL DEFAULT 0,
  `TERM_DAYS` INT NULL DEFAULT 0,
  `NUMBER_CLIENTS` INT NULL DEFAULT 1,
  `Type_tren` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ID_SERVICE`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`services`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`services` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`services` (
  `ID` INT NULL DEFAULT NULL,
  `TYPE` TEXT NULL DEFAULT NULL,
  `NAME` TEXT NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `remainder` INT NULL DEFAULT NULL,
  `cost` DOUBLE NULL DEFAULT NULL,
  `term_days` INT NULL DEFAULT NULL,
  `accountable` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`telegram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`telegram` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`telegram` (
  `id_client` INT NULL DEFAULT NULL,
  `id_telegram` TEXT NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`trainers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`trainers` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`trainers` (
  `idTrainer` INT NULL DEFAULT NULL,
  `idClientThisTrainer` INT NULL DEFAULT NULL,
  `idTypeTrainer` INT NULL DEFAULT NULL,
  `balance` INT NULL DEFAULT NULL,
  `del` TINYINT(1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`up_id`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`up_id` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`up_id` (
  `Class` TEXT NULL DEFAULT NULL,
  `Value_IP` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`users` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`users` (
  `idUser` INT NULL DEFAULT NULL,
  `nameUser` TEXT NULL DEFAULT NULL,
  `loginUser` TEXT NULL DEFAULT NULL,
  `passwordUser` INT NULL DEFAULT NULL,
  `authUser` TINYINT(1) NULL DEFAULT NULL,
  `savePassword` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `datebasespartak`.`valueaccountingbook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `datebasespartak`.`valueaccountingbook` ;

CREATE TABLE IF NOT EXISTS `datebasespartak`.`valueaccountingbook` (
  `operationNumber` INT NULL DEFAULT NULL,
  `operationDate` TEXT NULL DEFAULT NULL,
  `operationTime` TEXT NULL DEFAULT NULL,
  `idUser` INT NULL DEFAULT NULL,
  `nameUser` TEXT NULL DEFAULT NULL,
  `idService` INT NULL DEFAULT NULL,
  `nameService` TEXT NULL DEFAULT NULL,
  `Coming` INT NULL DEFAULT NULL,
  `Consumption` INT NULL DEFAULT NULL,
  `Balance` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
