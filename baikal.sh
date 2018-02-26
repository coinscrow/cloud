#!/bin/bash
exec 3<>/dev/tcp/127.0.0.1/4028

MESSAGE="summary+pools+devs"

echo -ne $MESSAGE >&3
printf $MESSAGE >&3
