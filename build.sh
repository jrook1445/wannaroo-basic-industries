#!/bin/bash
# change the value of NMLC to reference your own nmlc installation
NMLC="pyrun $HOME/Downloads/openttd/nml-0.5.0/nmlc"
./clean.sh
mkdir wannaroo-basic-industries
gcc -C -E -nostdinc -x c-header wannaroo-basic-industries.pnml > wannaroo-basic-industries.nml
$NMLC --nfo=wannaroo-basic-industries-part.nfo wannaroo-basic-industries.nml
cat wannaroo-basic-industries-part.nfo houses.nfo > wannaroo-basic-industries.nfo
grfcodec -e wannaroo-basic-industries.nfo `pwd`
if [ $? -eq 0 ]
then
    echo "sucessful build"
    cp wannaroo-basic-industries.nfo generated
    cp wannaroo-basic-industries.grf wannaroo-basic-industries
    cp README.md wannaroo-basic-industries/readme.txt
    cp LICENSE wannaroo-basic-industries/license.txt
    cp changelog.txt wannaroo-basic-industries
    tar cvf wannaroo-basic-industries.tar wannaroo-basic-industries
    cp -i wannaroo-basic-industries.tar $HOME/.openttd/newgrf
#    cp -i wannaroo-basic-industries.grf $HOME/.openttd/newgrf
else
    echo "could not build newgrf"
fi

