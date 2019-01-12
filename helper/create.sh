# helper/create_base_0.sh NAME domain1,domain2,dominN;helper/create_server_key_1.sh NAME;helper/create_client_server_request_2.sh NAME;helper/create_server_cert_3.sh NAME;
helper/create_base_0.sh $1 $2
helper/create_server_key_1.sh $1
helper/create_client_server_request_2.sh $1
helper/create_server_cert_3.sh $1
