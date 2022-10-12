# Server Management <!-- omit in toc -->

This repo provides how to manage servers in Takeuchi Lab.

- [Supported OS](#supported-os)
- [Setup a server](#setup-a-server)
  - [Clone the repo](#clone-the-repo)
  - [Setup HTTP proxy](#setup-http-proxy)
  - [Run the setup script](#run-the-setup-script)
- [Mount LAN disk](#mount-lan-disk)
- [Mount USB drive](#mount-usb-drive)

## Supported OS

- Ubuntu Server 20.04 LTS
- Ubuntu Server 22.04 LTS

## Setup a server

### Clone the repo

```sh
git clone https://github.com/wasedatakeuchilab/server
cd server
```

### Setup HTTP proxy

Run [setup-proxy.sh](./scripts/setup-proxy.sh) as a `sudo` user.

```sh
./scripts/setup-proxy.sh
```

Then login again or reboot and the Internet is available for most applications on the machine.

### Run the setup script

Run [setup.sh](./scripts/setup.sh) as a `sudo` user.

```sh
./scripts/setup.sh
```

The script is going to:

- install required or useful deb packages.
- install [Docker]
- install [MicroK8s]
- install crontabs for Cron
- install Git hooks for the cloned repogitory

## Mount LAN disk

TODO: Write how to mount the LAN disk

## Mount USB drive

TODO: Write how to mount a USB drive

[docker]: https://www.docker.com/
[microk8s]: https://microk8s.io/
