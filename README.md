<div style="text-align: center;">

![Warhorse](/images/logo_full.png "Logo")

</div>

# Warhorse

![GitHub Stars](https://img.shields.io/github/stars/warhorse/warhorse?style=social) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/warhorse/warhorse)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/warhorse/warhorse)
![GitHub Contributors](https://img.shields.io/github/contributors/warhorse/warhorse?style=plastic)
[![CI](https://github.com/warhorse/warhorse/workflows/CI/badge.svg?event=push)](https://github.com/warhorse/warhorse/actions?query=workflow%3ACI)
![License](https://img.shields.io/github/license/warhorse/warhorse)
![Commit](https://img.shields.io/github/last-commit/warhorse/warhorse)

Table of contents
-----------------

* [Overview](#overview)
* [Features](#features)
* [Documentation](#documentation)
* [Development](#development)
* [Acknowledgments](#usage)

## Overview

Warhorse consists of a fully-featured Ansible playbook to deploy infrastructure in the cloud for conducting security assessments. The Playbook combines Terraform & Ansible to deploy and configure virtual machines for a wide range of use cases. This Playbook is highly customizable and includes operational security. No experience with Ansible or Terraform is required to use this Playbook.

## Video Demo

[![WarHorse Demo](https://img.youtube.com/vi/AXXOlynBeQw/0.jpg)](https://youtu.be/AXXOlynBeQw)

## Current Features

* Pure Ansible playbook that dynamically builds Terraform HCL.
* Security from the ground up.
* Multiple cloud providers supported.
* Modular Design. (Only enable what you need)
* Docker containers for each application.
* Designed for multiple use cases.
* Single YAML configuration file.

## Supported Cloud Providers / Service

| Logo                                                                                                                                    | Provider      | Services    |
|-----------------------------------------------------------------------------------------------------------------------------------------|---------------|-------------|
| <img src='https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/DigitalOcean_logo.svg/1200px-DigitalOcean_logo.svg.png' width='40'> | Digital Ocean | Droplet,DNS |
| <img src='https://download.logo.wine/logo/Microsoft_Azure/Microsoft_Azure-Logo.wine.png' width='40'>                                    | Azure         | CDN         |
| <img src='https://duckduckgo.com/i/b2c970b6e455e9e6.png' width='40'>                                                                    | AWS           | CDN,EC2,DNS |
| <img src='https://duckduckgo.com/i/6d905c15c93e97e0.png' width='40'>                                                                    | Linode        | COMPUTE,DNS |

## Modules

| Logo | Service      | Role                                                                                |
|------|--------------|-------------------------------------------------------------------------------------|
| <img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F3.bp.blogspot.com%2F-NBDZCJS1fYk%2FVyIZWe1y0_I%2FAAAAAAAAA_o%2FzyiOgXDaRqsrr-hbgvluLRMFfRmNHfzngCLcB%2Fs1600%2Fcobaltstrike.png&f=1&nofb=1&ipt=07167bd313187cb12517bcae9acb2ea50e8b02a3b122e934c3d1c53f89cf998d&ipo=images' width='40' >  | Cobaltstrike | [cobaltstrike_docker](https://github.com/warhorse/ansible-role-cobaltstrike-docker) |
| <img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fraw.githubusercontent.com%2Fdocker-library%2Fdocs%2Fa6cc2c5f4bc6658168f2a0abbb0307acaefff80e%2Ftraefik%2Flogo.png&f=1&nofb=1&ipt=3f391b15c894bb4f93cf82878c0bc51980139360cda7200b7e34bdf4dfac60eb&ipo=images' width='40'>  | Traefik | [traefik_docker](https://github.com/warhorse/ansible-role-traefik-docker) |
| <img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdist.neo4j.com%2Fwp-content%2Fuploads%2F20210527153924%2FNeo4j-icon-color.png&f=1&nofb=1&ipt=53e5bb46bcd4a609971721d19b6d8a5178ff6632b30a550ad0247177f644e453&ipo=images' width='40'>  | Neo4j | [neo4j_docker](https://github.com/warhorse/ansible-role-nginx-docker) |
| <img src='https://d1q6f0aelx0por.cloudfront.net/product-logos/library-nginx-logo.png' width='40'> | Nginx | [nginx_docker](https://github.com/warhorse/ansible-role-nginx-docker)  |
| <img src='https://raw.githubusercontent.com/kgretzky/evilginx2/master/media/img/evilginx2-logo-512.png' width='40'> | Evilginx2 | [evilginx2_docker](https://github.com/warhorse/ansible-role-evilginx2-docker)  |
| <img src='https://avatars.githubusercontent.com/u/110021389?s=200&v=4' width='40'>  | Nighthawk  | [nighthawk_docker](https://github.com/warhorse/ansible-role-nighthawk-docker) |
| <img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.g2crowd.com%2Fuploads%2Fproduct%2Fimage%2Fsocial_landscape%2Fsocial_landscape_3d6e8d6392f304e1696afaaab3208ab1%2Ftailscale.png&f=1&nofb=1&ipt=fe0564c6307639ced328b33139650135a31d0914c1fd8ae79696721dbc911daa&ipo=images' width='40'>  | Tailscale | [tailscale](https://github.com/artis3n/ansible-role-tailscale)  |
| <img src='https://external-content.duckduckgo.com/ip3/docs.mythic-c2.net.ico' width='40'> | Mythic | [mythic](https://github.com/t94j0/ansible-role-mythic)   |
| <img src='https://github.com/gophish/gophish/raw/master/static/images/logo_purple.png' width='40'> | Gophish | [gophish_docker](https://github.com/warhorse/ansible-role-gophish-docker)  |

## Documentation

https://war-horse.io/

## Development

Does none of this work for you? Submit an issue [HERE](https://github.com/warhorse/warhorse/issues)

Want to add a cool new feature? Shoot me that sweet pull request.

## Acknowledgements

Ansible roles from https://github.com/geerlingguy

## License

MIT

