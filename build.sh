#!/bin/bash

sudo docker build -t teamcity-appcenter-agent:latest . && sudo docker save teamcity-appcenter-agent:latest > teamcity-appcenter-agent.tar
