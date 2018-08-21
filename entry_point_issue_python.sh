#!/bin/bash

export MD_CONFIG_ENVIRONMENTS=dev,docker

cd /home/mdstudio/common_resources/tests

python test_wamp.py
