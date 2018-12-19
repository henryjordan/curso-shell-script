#!/bin/bash

cd ~/curso-shell-script/apache-log/

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" #de 0 a 9, entre 1 e 3 algarismos
if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $1
    if [ $? -ne 0 ]
    then
        echo "O endereco IP procurado nao esta presente no arquivo"
    fi
else
    echo "Formato não é válido"
fi
cat apache.log | grep $1
