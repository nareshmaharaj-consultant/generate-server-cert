#openssl x509 -req -days 365 -in backup2/backup2.csr -CA mongodb-ca.crt -CAkey mongodb-ca.key -CAcreateserial -out backup2/backup2.crt -extfile backup2/openssl.backup2.cnf -extensions v3_req
openssl x509 -req -days 365 -in $1/$1.csr -CA mongodb-ca.crt -CAkey mongodb-ca.key -CAcreateserial -out $1/$1.crt -extfile $1/openssl.server.cnf -extensions v3_req
cat $1/$1.crt > $1/$1.pem
cat $1/$1.key >> $1/$1.pem  
#echo "Verify mongodb-ca.crt $1/$1.crt is valid"
#openssl verify -CAfile mongodb-ca.crt $1/$1.crt
#echo "Verify mongodb-ca.pem $1/$1.pem is valid"
#openssl verify -verbose -x509_strict -CAfile mongodb-ca.pem -CApath nosuchdir $1/$1.pem
