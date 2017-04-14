#!/bin/bash

execName=pp-lisp

if [[ ! -f "./${execName}" ]]
then
    cat <<EOF

There is no local ${execName} file to copy over to /usr/bin/

Build it first using: ./build.sh

EOF

    exit -1

fi

if [[ -f "/usr/bin/${execName}" ]] && cmp "/usr/bin/${execName}" "./${execName}"
then

    cat <<EOF
 ( The local ${execName} file is already identical to: /usr/bin/${execName} )

EOF

    exit 0
fi


cat <<EOF

This will copy pp-lisp to /usr/bin/ using sudo.

Press RETURN to continue (Ctrl-C to abort).

EOF

read -r line

sudo cp pp-lisp /usr/bin/
