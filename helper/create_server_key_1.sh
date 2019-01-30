#openssl genrsa -out backup2/backup2.key 4096
mkdir -p $1
openssl genrsa -out $1/$1.key 4096
