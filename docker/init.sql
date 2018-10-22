# This init script will be run by the db container on start up to 
# initialise stuff

CREATE DATABASE IF NOT EXISTS janeway CHARACTER SET = utf8 COLLATE = utf8_general_ci;

