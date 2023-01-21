/*Queries that provide answers to the questions from all projects.*/


SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


/* TRANSACTIONS */
BEGIN;
UPDATE animals SET species='unspecified';
select * from animals;
ROLLBACK;
select * from animals;

BEGIN;
UPDATE animals SET species='digimon' WHERE name LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species IS NULL;
COMMIT;

/* DROP TRANSACTIONS */
BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE from animals where date_of_birth>'2022-01-01';
SAVEPOINT sp1;
UPDATE animals SET weight_kg=weight_kg*-1;
ROLLBACK to sp1;
UPDATE animals SET weight_kg=weight_kg*-1 WHERE weight_kg<0;
COMMIT;



/* Queries and Answers */

/* 1. How many animals are there? */
SELECT COUNT(*) FROM animals;
/* 2. How many animals have never tried to escape? */
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
