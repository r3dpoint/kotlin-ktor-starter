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

Build with docker.

```bash
docker build -t kotlin-ktor-starter .
```

Run with docker compose.

```bash
docker-compose up
````

## Buildpacks

Installing the [pack](https://buildpacks.io/docs/tools/pack/) CLI

```bash
brew install buildpacks/tap/pack
```

Build the using pack.

```bash
pack build kotlin-ktor-starter --builder heroku/buildpacks:20
```

## Development

Configure the port that each server runs on.

```bash
export PORT=8881
```

Run servers locally using the below example.

```bash
java -jar applications/basic-server/build/libs/basic-server-1.0-SNAPSHOT.jar
```

Running with docker.

```bash
docker run  -e "PORT=8882" -e "APP=applications/basic-server/build/libs/basic-server-1.0-SNAPSHOT.jar" kotlin-ktor-starter
```

## Deployment

Fresh cloud deployment and pipeline files are located in `deployments`.

Experimental [Identity Aware Proxy](https://cloud.google.com/iap) deployment and service files
are located in `experimental`.

That's a wrap for now.