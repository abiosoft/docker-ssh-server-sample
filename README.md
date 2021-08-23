# ssh server

A sample ssh server for testing ssh connection

## Starting the server

```sh
# add the -d flag to run it in background
docker-compose up --build
```

## Connecting to the server

- `-l` is the user to login as
- `-p` is the port to connect to
- `-i` is the identity file (SSH private key) to use

```sh
ssh -l root -p 2222 -i ssh/id_rsa 127.0.0.1
```

## Teardown the server

```
docker-compose down
```
