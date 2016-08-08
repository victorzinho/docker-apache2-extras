# apache2-extras
Apache2 with extra enabled modules on top of [vicgonco/apache2](https://hub.docker.com/r/vicgonco/apache2/).

## Enabled modules

* *mod_security*: Including the CRS (Core Rule Set); all rules activated, `SecRuleEngine On`, `SecResponseBodyAccess Off` and `SecRequestBodyLimit 52428800` (50MB). Configured following [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-mod_security-with-apache-on-debian-ubuntu).
* *proxy_http*.
* *rewrite*.

## [Automated builds](https://hub.docker.com/r/vicgonco/apache2-extras/) 

* Latest ([Dockerfile](https://github.com/victorzinho/docker-apache2-extras/blob/master/Dockerfile))

## Running

Run detached, exposing port 80 and mounting a custom `sites-enabled` directory:

```
docker run -d -p 80:80 -v /path/to/sites-enabled:/etc/apache2/sites-enabled --name=apache2-extras apache2-extras
```

Get a [minimal sites-enabled directory](https://github.com/victorzinho/docker-apache2-extras/tree/master/sites-enabled) to start with.
