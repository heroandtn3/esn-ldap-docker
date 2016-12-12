#!/bin/sh
docker rm -fv esn-ldap

docker run --name esn-ldap -p 389:389 -d \
  --volume $PWD/populate-data:/etc/ldap.dist/prepopulate \
  -e SLAPD_PASSWORD=secret -e SLAPD_DOMAIN=open-paas.org \
  dinkel/openldap
