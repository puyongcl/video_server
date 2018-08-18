#! /bin/bash

# Build web UI

cd ~/go/src/video_server/web
go install
cp ~/go/bin/web ~/go/bin/video_server_web_ui/web
-R ~/go/src/video_server/templates ~/go/bin/video_server_web_ui/