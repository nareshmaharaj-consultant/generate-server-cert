cat helper/templates/openssl.info.1.cnf > openssl.cnf
cat helper/templates/openssl.info.2.cnf >> openssl.cnf
openssl genrsa -out mongodb-ca.key 4096
openssl req -new -x509 -days 1826 -key mongodb-ca.key -out mongodb-ca.crt -config openssl.cnf
cat mongodb-ca.crt > mongodb-ca.pem
