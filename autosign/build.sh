#!/bin/sh

MODULE=autosign
VERSION=0.1
TITLE="Auto Signin"
DESCRIPTION=自动签到
HOME_URL=Module_autosign.asp
CHANGELOG=""

# Check and include base
DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# build bin
sh $DIR/build/build autosign

# change to module directory
cd $DIR

# do something here
do_build_result

sh backup.sh $MODULE
