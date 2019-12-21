#!/bin/bash

set -e

open /Applications/Utilities/XQuartz.app
/opt/X11/bin/xhost + 127.0.0.1

docker image build -t snow-falls:latest .
docker run --rm -it -e DISPLAY=host.docker.internal:0 snow-falls:latest $1

pkill "launchd_startx"
