#!/bin/bash

BLINK_DIFF="../node_modules/.bin/blink-diff"
cd cypress
for screenshot in screenshots-base/*.png
do
    screenshot=$(basename "$screenshot") # strip folder prefix
    $BLINK_DIFF screenshots-base/"$screenshot" screenshots/"$screenshot" --output screenshots-diff/"$screenshot".result.png
done
