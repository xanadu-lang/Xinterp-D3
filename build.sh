#!/bin/sh

######
#
# Author:
# Richard Kent (https://github.com/sparverius)
#
######

make_all() {
    make -C srcgenx all
}

######
#
# For when this repository is cloned without --recursive flag
#
######

clone_xatsopt() {
    if [ ! -d modules/xatsopt ]; then
	(cd modules && git clone https://github.com/xanadu-lang/xatsopt.git)
    fi
}

######

XINTERP_SCRIPT='#!/bin/sh

XINTERP='${PWD}/bin/xinterp'

if [ ! "$XATSHOME" ] ; then
  export XATSHOME='${PWD}/modules/xatsopt'
fi

if [ -f "$XINTERP" ] ; then
  "$XINTERP" "$@"
else
  # if build failed or "make cleanall" was executed
  echo "please execute `make all` to build [xinterp]"
fi
'
generate_script() {
    printf "${XINTERP_SCRIPT}" > ./bin/xinterp.sh
}

######

main() {
    clone_xatsopt
    make_all
    generate_script
}

main

###### end of [build.sh] ######
