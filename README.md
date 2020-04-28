# spring-boot-log4j-2-scaffolding

![keep growing logo](readme-images/logo_250x60.png)

This project is a simple scaffolding for a Spring Boot application that uses Log4j 2 for logging.

To learn how to set up a project like this one, check out the following posts:

* [Spring Boot Log4j 2 advanced configuration #1 - saving logs to files](https://keepgrowing.in/java/springboot/spring-boot-log4j-2-advanced-configuration-#1---saving-logs-to-files/)
* [Spring Boot Log4j 2 advanced configuration #2 - add a Rollover Strategy for a log file](https://keepgrowing.in/java/springboot/spring-boot-log4j-2-advanced-configuration-#2---add-a-rollover-strategy-for-a-log-file/)

## Getting Started

To clone the repository, run in the command line:
```bash
$ git clone https://github.com/little-pinecone/spring-boot-log4j-2-scaffolding.git
```

You can build the application with:
```bash
$ mvn clean install
```

## Overview and technical features

* [Log4j 2](https://logging.apache.org/log4j/2.x/) is used for logs processing.
* The application uses the `root` logger and sends log entries to `RollingFile` and `Console` appenders.
* When you run the app, the `logs` directory will be created automatically. 

## Built With

* [Java 11](https://openjdk.java.net/projects/jdk/11/)
* [Spring Boot 2.2.6](https://start.spring.io/)
* [Maven](https://maven.apache.org/)

## License

This project is licensed under the MIT License - see the [license details](https://opensource.org/licenses/MIT).