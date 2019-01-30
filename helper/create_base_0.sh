USGAE="create_base.sh name dnsList"
#create_base.sh host1 simple.host.com,simple,simple.com

if [ -z "$1" ]
  then
    echo "Name required - $USAGE"
    exit 0
fi

if [ -z "$2" ]
  then
    echo "DNS names separated by comma i.e. p1.com,p1,q1 - $USAGE"
    exit 0
fi

mkdir -p $1
cat helper/templates/openssl.info.1.cnf > $1/openssl.server.cnf

# Split the dns names which should be in csv format
dns_name_arr=($(echo "$2" | sed "s/ //g" | tr ',' '\n'))
count=${#dns_name_arr[@]}

echo -e "\nsubjectAltName = @alt_names" >> $1/openssl.server.cnf
echo -e "\n[ alt_names ]" >> $1/openssl.server.cnf

COUNTER=1
  until [  $COUNTER -gt $count ]; do
  name=${dns_name_arr[$COUNTER-1]}
    echo "DNS.$COUNTER = $name"
    echo "DNS.$COUNTER = $name" >> $1/openssl.server.cnf
    let COUNTER+=1
  done

echo -e "\n" >> $1/openssl.server.cnf
cat helper/templates/openssl.info.2.cnf >> $1/openssl.server.cnf
