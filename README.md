# Server Management <!-- omit in toc -->

This repo provides how to manage servers in Takeuchi Lab.

- [Supported OS](#supported-os)
- [Set up a server](#setup-a-server)
  - [Clone the repo](#clone-the-repo)
  - [Set up HTTP proxy](#setup-http-proxy)
  - [Run the setup script](#run-the-setup-script)
- [Mount LAN disk](#mount-lan-disk)
- [Mount USB drive](#mount-usb-drive)

## Supported OS

- Ubuntu Server 20.04 LTS
- Ubuntu Server 22.04 LTS

## Set up a server

### Clone the repo

```sh
git clone https://github.com/wasedatakeuchilab/server
cd server
```

### Set up HTTP proxy

Run [setup-proxy.sh](./scripts/setup-proxy.sh) as `sudo` user.

```sh
./scripts/setup-proxy.sh
```

Then login again or reboot and the Internet is available for most applications on the machine.

### Run the setup script

Run [setup.sh](./scripts/setup.sh) as `sudo` user.

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

Run [setup-landisk-mount.sh](./scripts/setup-landisk-mount.sh) as `sudo` user.

```sh
./scripts/setup-landisk-mount.sh
```

:warning: Note that the script must not be run twice.

## Mount USB drive

TODO: Describe how to mount a USB drive

[docker]: https://www.docker.com/
[microk8s]: https://microk8s.io/
