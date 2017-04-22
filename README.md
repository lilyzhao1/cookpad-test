# Cookpad Test Subission

## Author
Lily Zhao

## How to build

This project is built using spring boot and maven using the Java language.

To compile this, build it as a standard maven project within project root directory:

```sh
$ mvn clean install
```

## How to run

The easiest way to run this is to use the maven spring boot plugin.

```sh
$ mvn spring-boot:run
```

The program listens on port 8080, the default spring boot port. You can then call the API using 
your HTTP client of choice:

```sh
$ curl localhost:8080/user/1
{"id":1,"name":"Austin","friends":[2,5]}
```

This is also hosted on heroku at https://vast-sands-40242.herokuapp.com/

## Problem 2 solution
SQL table definitions are in [this .sql file](cookpad-test-problem2.sql).

