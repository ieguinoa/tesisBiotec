DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
INITIALDIR=$PWD
export ANCHOR_PATH=$DIR/ANCHOR
export IUPred_PATH=$DIR/iupred
cd $DIR/ANCHOR
make clean
make
cd $DIR/iupred
gcc iupred.c -o iupred
export PROSITE=$DIR/ps_scan
cd $INITIALDIR
