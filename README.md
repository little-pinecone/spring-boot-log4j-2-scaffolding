# spring-boot-log4j-2-scaffolding

![keep growing logo](readme-images/logo_250x60.png)

This project is a simple scaffolding for a Spring Boot application that uses Log4j 2 for logging and Elastic Stack for processing log entries.

To learn how to set up a project like this one, check out the following posts:

* [Spring Boot Log4j 2 advanced configuration #1 - saving logs to files](https://keepgrowing.in/java/springboot/spring-boot-log4j-2-advanced-configuration-1-saving-logs-to-files/)
* [Spring Boot Log4j 2 advanced configuration #2 - add a Rollover Strategy for log files](https://keepgrowing.in/java/springboot/spring-boot-log4j-2-advanced-configuration-2-add-a-rollover-strategy-for-log-files/)
* [Processing logs with Elastic Stack #1 - parse and send various log entries to ElasticSearch](https://keepgrowing.in/java/springboot/processing-logs-with-elastic-stack-1-parse-and-send-various-log-entries-to-elasticsearch/)

## Getting Started

To clone the repository, run in the command line:
```bash
$ git clone https://github.com/little-pinecone/spring-boot-log4j-2-scaffolding.git
```

You can build the application with:
```bash
$ mvn clean install
```

### Run Elastic Stack

* Run this application to make sure that the `all.log` file is created and not empty (more than one line is required).
* Run the `$ docker-compose up -d` command in the project directory. The following services should be started:
```
IMAGE                                     PORTS                                            NAMES
springbootelasticstack_filebeat                                                       springbootelasticstack_filebeat_1
logstash:7.6.2                       0.0.0.0:5044->5044/tcp, 0.0.0.0:9600->9600/tcp   springbootelasticstack_logstash_1
elastichq/elasticsearch-hq:latest    0.0.0.0:5000->5000/tcp                           springbootelasticstack_elastichq_1
elasticsearch:7.6.2                  0.0.0.0:9200->9200/tcp, 9300/tcp                 springbootelasticstack_elasticsearch_1
```
* Visit `http://localhost:5000/#!/` to use ElastiHQ interface to verify the content send to Elasticsearch (run `Query` for the `spring-boot-app-logs-YYYY.MM.dd` index):
 
 ![elastichq-screenshot](readme-images/elastichq-screenshot.png)

## Overview and technical features

* [Log4j 2](https://logging.apache.org/log4j/2.x/) is used for logs processing.
* The application uses the `root` logger and sends log entries to `RollingFile` and `Console` appenders (when you run the app, the `logs` directory will be created automatically).
* After log entries are processed by Filebeat and Logstash they are send to ElasticSearch.

## Built With

* [Java 11](https://openjdk.java.net/projects/jdk/11/)
* [Spring Boot 2.2.6](https://start.spring.io/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Elastic Stack](https://www.elastic.co/what-is/elk-stack)
* [Maven](https://maven.apache.org/)

## License

This project is licensed under the MIT License - see the [license details](https://opensource.org/licenses/MIT).