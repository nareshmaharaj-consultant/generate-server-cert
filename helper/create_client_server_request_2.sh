#openssl req -new -key backup2/backup2.key -out backup2/backup2.csr -config backup2/openssl.backup2.cnf
openssl req -new -key $1/$1.key -out $1/$1.csr -config $1/openssl.server.cnf
