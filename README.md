# Kotlin ktor starter

An [application continuum](https://www.appcontinuum.io/) style example using Kotlin and Ktor
that includes a single web application with 2 background workers.
Deployed via [Fresh Cloud](https://www.freshcloud.com/).

* Basic web application
* Data analyzer
* Data collector

The example showcases on the below technologies -

* Language [Kotlin](https://kotlinlang.org)
* Web Framework [Ktor](https://ktor.io) with [Netty](https://netty.io/) and [Freemarker](https://freemarker.apache.org)
* Build tool [Gradle](https://gradle.org)
* Testing tools [JUnit](https://junit.org/)
* Production [FreshCloud](https://www.freshcloud.com/) on Google's Cloud Platform

## Getting Started

Building a Docker container and running with Docker.

## Buildpacks

Installing the [pack](https://buildpacks.io/docs/tools/pack/) CLI

```bash
brew install buildpacks/tap/pack
```

Build using pack.

```bash
pack build kotlin-ktor-starter --builder heroku/buildpacks:20
```

Running with docker.

```bash
docker run  -e "PORT=8882" -e "APP=applications/basic-server/build/libs/basic-server-1.0-SNAPSHOT.jar" kotlin-ktor-starter
```

## Development

Building a Java Archive file (jar) and running with gradle.

```bash
./gradlew clean build
```

Configure the port that each server runs on.

```bash
export PORT=8881
```

Run servers locally using the below example.

```bash
java -jar applications/basic-server/build/libs/basic-server-1.0-SNAPSHOT.jar
```

That's a wrap for now.