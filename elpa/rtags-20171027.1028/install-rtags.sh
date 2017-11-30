#!/bin/bash -x
FILE="rtags-2.15.tar.bz2"
URL="https://andersbakken.github.io/rtags-releases/$FILE"
ARGS="--progress -L -o $FILE"
CMAKEARGS=
[ -e "$FILE" ] && ARGS="$ARGS -C -"
ARGS="$ARGS $URL"
echo "Downloading rtags from $URL"
if ! curl $ARGS; then
    echo "Failed to download $FILE from $URL" >&2
    exit 1
fi

if ! tar xfj "$FILE"; then
    echo "Failed to untar $FILE" >&2
    rm "$FILE"
    exit 2
fi

cd "`echo $FILE | sed -e 's,.tar.bz2,,'`"
if ! cmake . ${CMAKEARGS}; then
    echo Failed to cmake
    rm -rf CMakeCache.txt
    exit 3
fi
make
exit $?
