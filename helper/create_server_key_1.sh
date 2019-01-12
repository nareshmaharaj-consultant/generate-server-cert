#openssl genrsa -out backup2/backup2.key 4096
mkdir -p $1
openssl genrsa -out $1/$1.key 4096

cp openssl.cnf $1/openssl.server.cnf

echo "#########################################################################"
echo "Edit $1/openssl.server.cnf and ADD the following to section [v3_req]"
echo "subjectAltName = @alt_names"

echo "[ alt_names ]"
echo "DNS.1 = Enter the FQDN here" 
echo "DNS.2 = Enter the short DNS name here"
echo "DNS.3 = Public DNS name here"
echo "#########################################################################"
