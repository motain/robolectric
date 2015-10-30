#!/bin/bash
#
# Deploy a release build to Sonatype.
#

set -e

PROJECT=$(cd $(dirname "$0")/..; pwd)
ARGUMENTS="--settings $PROJECT/settings.xml -D skipTests"

echo "Building Robolectric..."
cd "$PROJECT"; mvn ${ARGUMENTS} -P release clean deploy

#echo "Building shadows for API 16..."
#cd "$PROJECT"/robolectric-shadows/shadows-core; mvn ${ARGUMENTS} -P release,android-16 clean deploy
#
#echo "Building shadows for API 17..."
#cd "$PROJECT"/robolectric-shadows/shadows-core; mvn ${ARGUMENTS} -P release,android-17 clean deploy

echo "Building shadows for API 18..."
cd "$PROJECT"/robolectric-shadows/shadows-core; mvn ${ARGUMENTS} -P release,android-18 clean deploy

#echo "Building shadows for API 19..."
#cd "$PROJECT"/robolectric-shadows/shadows-core; mvn ${ARGUMENTS} -P release,android-19 clean deploy

echo "Building shadows for API 21..."
cd "$PROJECT"/robolectric-shadows/shadows-core; mvn ${ARGUMENTS} -P release,android-21 clean deploy
