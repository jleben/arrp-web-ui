
default_name=jakobleben/arrp-web-ui

name=$1
if [[ -z $name ]]
then
    name=$default_name
fi

id=$(git rev-parse HEAD)
short_id=${id:0:7}
docker build -t $name:$short_id -t $name:latest .
