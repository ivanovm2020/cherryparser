#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/misa.pem \
    target/cherryparser-1.0-SNAPSHOT.jar \
    ubuntu@18.185.30.193:~/cherryparser/

echo 'Restart server...'

ssh  -tt -i ~/.ssh/misa.pem ubuntu@18.185.30.193 << EOF
pgrep java | xargs kill -9
nohup java -jar cherryparser-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye Bye'


