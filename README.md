# Server Management <!-- omit in toc -->

This repo provides how to manage servers in Takeuchi Lab.

The supported OS:

- Ubuntu Server 20.04 LTS
- Ubuntu Server 22.04 LTS

- [Set up a server](#set-up-a-server)
  - [Clone the repo](#clone-the-repo)
  - [Set up HTTP proxy](#set-up-http-proxy)
  - [Run the setup script](#run-the-setup-script)

## Set up a server

### Clone the repo

```sh
git clone https://github.com/wasedatakeuchilab/server
cd server
```

### Set up HTTP proxy

Run [setup-proxy.sh](./scripts/setup-proxy.sh) as a `sudo` user.

```sh
./scripts/setup-proxy.sh
```

### Run the setup script

Run [setup.sh](./scripts/setup.sh) as a `sudo` user.

```sh
./scripts/setup.sh
```
