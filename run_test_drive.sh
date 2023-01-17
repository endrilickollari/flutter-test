#!/bin/sh
/app/chromedriver --whitelisted-ips --port=4444 &
FOO_PID=$!
# nohup sh -c /app/chromedriver --whitelisted-ips &

flutter doctor
flutter pub get
flutter clean

# run test
flutter drive --target=test/widget_test.dart --release

kill $FOO_PID
