#!/bin/bash
exec 3<>/dev/tcp/127.0.0.1/4028
echo "summary+pools+devs" 1>&3
response="$(cat <&3)"

echo $response
