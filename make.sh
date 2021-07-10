#!/bin/bash

COMMAND="./gradlew clean publishToMavenLocal"

array=( lala)
for i in "${array[@]}"
do
  cd ./$i
  echo building $i
  $COMMAND
  cd ..
done

