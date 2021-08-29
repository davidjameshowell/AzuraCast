#!/bin/bash
set -e
source /bd_build/buildconfig
set -x

apt-get update

$minimal_apt_get_install --allow-downgrades --allow-remove-essential--allow-change-held-packages --fix-broken beanstalkd
