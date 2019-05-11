# README

This repo is a basic test of different algorithms.  It runs a common set ( such as Quick Sort ) and records the time of execution.

## Setup

It is recommonded to run this repo as a docker instance.  This will be the quickest and easiest setup.  Simply install [Docker](https://www.docker.com).  After that,
run `docker-compose up` at the root of the directory.  When running for the first time, you may need to run `docker-compose up` and `docker-compose down` several times to initially setup the postgresql server container.

## How to run the test scripts

If natively installed, simply run `rake tests:run` and the alogorithm tests will commence.  The loop is hardcoded to run 1000 times.  If running in a docker container, run command `docker exec -it {container_name} /bin/bash`, this will setup a bash shell session inside the container.  then run the `rake tests:run` command.  There is a csv file included with a seed to populate the Users table.  To run this script run `rake tests:import`