# terraform-int

This is a repository of Terraform configuration to stand up our lab infrstructure. To use this repository, you must install Terraform. After that:

```bash
# Initialize providers and cache
terraform init

# Verify that the configuration seems valid
terraform plan

# Execute the plan
terraform apply

# Reverse, or destroy what was created
terraform destroy
```

## What does this provision?

For our lab environment, this creates clones of Ubuntu Cloud Images on ProxMoxand configures the needed hardware/resources for those VMs. Below is a summary:

| #   |                        Name | vCPU | RAM (MB) | Usage                                                                                               |
| --- | --------------------------: | :--: | :------: | --------------------------------------------------------------------------------------------------- |
| 1.  |    auth.int.hackatorium.com |  12  |   2048   | [Keycloak](https://www.keycloak.org/) AuthN/AuthZ/SSO                                               |
| 2.  |     git.int.hackatorium.com |  12  |   2048   | [Gitea](https://about.gitea.com/) Source Control                                                    |
| 3.  |   build.int.hackatorium.com |  12  |   2048   | [Jenkins](https://www.jenkins.io/) DevOps                                                           |
| 4.  |  backup.int.hackatorium.com |  12  |   2048   | [rsync](https://linuxconfig.org/how-to-create-incremental-backups-using-rsync-on-linux) Backups     |
| 5.  | logging.int.hackatorium.com |  12  |   2048   | [Graylog](https://graylog.org/) syslogd and log aggregation                                         |
| 6.  |  status.int.hackatorium.com |  12  |   2048   | [Uptime-Kuma](https://github.com/louislam/uptime-kuma) Uptime monitoring and incident/outage status |
| 7.  |   cloud.int.hackatorium.com |  12  |   2048   | [NextCloud](https://nextcloud.com/) End-user cloud storage                                          |
| 8.  |    draw.int.hackatorium.com |  12  |   2048   | [Draw.io](https://github.com/jgraph/docker-drawio) Self-hosted diagramming                          |
| 9.  | netboot.int.hackatorium.com |  12  |   2048   | [netboot.xyz](https://netboot.xyz/) PXE booting                                                     |
| 10. |  pihole.int.hackatorium.com |  12  |   2048   | [Pi-Hole](https://pi-hole.net/) DNS and ad-blocking                                                 |
| 11. |    docs.int.hackatorium.com |  12  |   2048   | [Bookstack](https://www.bookstackapp.com/) Documentation                                            |
| 12. |     soc.int.hackatorium.com |  12  |   2048   | [Wazuh](https://wazuh.com/) for SOC / [The Hive](https://thehive-project.org/) for IR               |

> **NOTE:** This will use 25,476 GB of RAM if you do not choose "Ballooning" in ProxMox.

There is a VLAN 50 where these machines live, and DNS entries as follows:

| Hostname                         | IP Address      |
| -------------------------------- | --------------- |
| auth.int.hackatorium.com         | 192.168.50.2    |
| *automation.int.hackatorium.com* | *192.168.50.11* |
| backup.int.hackatorium.com       | 192.168.50.5    |
| build.int.hackatorium.com        | 192.168.50.13   |
| cloud.int.hackatorium.com        | 192.168.50.21   |
| *cyberchef.int.hackatorium.com*  | *192.168.50.23* |
| docs.int.hackatorium.com         | 192.168.50.6    |
| draw.int.hackatorium.com         | 192.168.50.24   |
| git.int.hackatorium.com          | 192.168.50.12   |
| *kanban.int.hackatorium.com*     | *192.168.50.25* |
| logging.int.hackatorium.com      | 192.168.50.4    |
| netboot.int.hackatorium.com      | 192.168.50.7    |
| pihole.int.hackatorium.com       | 192.168.50.8    |
| soc.int.hackatorium.com          | 192.168.50.31   |
| *speedtest.int.hackatorium.com*  | *192.168.50.22* |
| status.int.hackatorium.com       | 192.168.50.3    |

The *italics* items may be addressed later.

## Installing Terraform

Here are instructions on how to install Terraform on Windows, macOS, and Linux:

### Windows:

1. Download the Terraform binary for Windows from the official website: [Terraform Downloads](https://www.terraform.io/downloads.html)
1. Extract the downloaded ZIP file to a directory of your choice.
1. Add the directory where the Terraform executable is located to your system's PATH environment variable. This step allows you to run Terraform from any command prompt.
1. Open a Command Prompt or PowerShell window and verify the installation by running the following command:

```powershell
terraform --version
```

### macOS:

1. Install [Homebrew](https://brew.sh), a popular package manager for macOS, if you haven't already. You can install Homebrew by running the following command in your terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Once Homebrew is installed, use it to install Terraform by running:

```bash
brew install terraform
```

3. Verify the installation by running:

```bash
terraform --version
```

### Linux:

1. Download the Terraform binary for Linux from the official website: [Terraform Downloads](https://www.terraform.io/downloads.html)
1. Extract the downloaded archive to a directory of your choice.
1. Move the Terraform executable to a directory included in your system's PATH environment variable or add the directory where the executable is located to the PATH.
1. Open a terminal and verify the installation by running:

```bash
terraform --version
```

