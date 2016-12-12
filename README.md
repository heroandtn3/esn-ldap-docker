# ESN LDAP

> Run Open LDAP server in docker for testing ESN

## Create and start container

Run this command to create `esn-ldap` container with prepopulate data:

`./start.sh`

Prepopulate LDAP directory contains:

- LDAP Admin: `cn=admin,dc=open-paas,dc=org`
- User1: `cn=user1@email,dc=open-paas,dc=org`
- User2: `cn=user2@email,dc=open-paas,dc=org`
- User3: `cn=user3@email,dc=open-paas,dc=org`

Default password is `secret`

## Modify LDAP entry

### By GUI

There are some GUI programs, one of the good ones is [JXplorer](http://jxplorer.org/)

### By LDIF files

Make sure you have `ldapmodify` command in your system, if not, you can install it by package `openldap`

- Change uid of the user1:

`ldapmodify -x -D "cn=admin,dc=open-paas,dc=org" -w secret -H ldap:// -f change-uid-user1.ldif`

- Add description to user1:

`ldapmodify -x -D "cn=admin,dc=open-paas,dc=org" -w secret -H ldap:// -f add-description-user1.ldif`

*You can create your own LDIF file, useful resources can be found on internet.*
