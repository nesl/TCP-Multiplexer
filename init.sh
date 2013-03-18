#!/bin/bash

while ! node serializer.js

do
    sleep 1
    echo "Restarting Program..."
done

