#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d -p 80:80 -v $DIR/sites-enabled:/etc/apache2/sites-enabled --name=apache2-extras apache2-extras
