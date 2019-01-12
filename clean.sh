for file in `ls -1 | egrep -v -e helper -e README.md -e produceServerCert.sh -e setup.sh -e clean.sh`; do rm -fr  $file; done
