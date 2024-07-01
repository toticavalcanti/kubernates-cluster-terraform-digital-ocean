# Kubernetes Cluster on DigitalOcean with Terraform

## Introduction
In this project, we will create a Kubernetes cluster on DigitalOcean and deploy the Flappy Bird application using Terraform. This guide will walk you through the entire process, from setting up your DigitalOcean account to deploying and managing the Kubernetes cluster.

## Prerequisites
- A DigitalOcean account (use [this link](https://www.digitalocean.com/) to sign up and receive $200 in credits).
- Terraform installed on your local machine.
- kubectl installed on your local machine.
- A GitHub account for managing your code repository.

## Setup

### 1. Create a DigitalOcean Account
Sign up for a DigitalOcean account [here](https://www.digitalocean.com/).

### 2. Obtain DigitalOcean API Token
1. Go to the [DigitalOcean Control Panel](https://cloud.digitalocean.com/).
2. Generate a new Personal Access Token and copy it.

### 3. Install doctl (DigitalOcean CLI)
#### For Windows
```powershell
Invoke-WebRequest https://github.com/digitalocean/doctl/releases/download/v1.104.0/doctl-1.104.0-windows-amd64.zip -OutFile ~\doctl-1.104.0-windows-amd64.zip
Expand-Archive -Path ~\doctl-1.104.0-windows-amd64.zip
New-Item -ItemType Directory $env:ProgramFiles\doctl\
Move-Item -Path ~\doctl-1.104.0-windows-amd64\doctl.exe -Destination $env:ProgramFiles\doctl\
[Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";$env:ProgramFiles\doctl\", [EnvironmentVariableTarget]::Machine)
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
