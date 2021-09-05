#!/bin/bash

sudo apt update && sudo apt install beanstalkd

set -ex

setuser azuracast azuracast_cli azuracast:setup:initialize
