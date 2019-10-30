# generate-server-cert.pem

To produce the base information for the certificate

setup.sh

Create the Certificate by providing a reference name of the server and the csv list of Subject Alternative Name SAN

produceServerCert.sh NAME_OF_SERVER_for_KEY [csv list of Subject Alternative Name SAN] 

e.g.:
produceServerCert.sh myserver1 "myserver1.live.com,myserver1,myserver1.com"
