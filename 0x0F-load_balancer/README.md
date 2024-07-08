# 0x0F-load_balancer

## Introduction

In this project, we are tasked with improving our web stack to include redundancy and load balancing. We will configure a load balancer and set up two web servers to handle incoming traffic. This setup will ensure that our infrastructure can handle more traffic and remain reliable even if one of the web servers fails.

## Concepts

### Load Balancer

A load balancer distributes incoming network traffic across multiple servers to ensure no single server becomes overwhelmed, which improves the availability and responsiveness of applications.

### Web Stack Debugging

Debugging a web stack involves identifying and resolving issues within the web server, application server, database, and any other components that make up the application stack.

## Requirements

- Configure Nginx on two web servers (`web-01` and `web-02`) to include a custom HTTP response header `X-Served-By` with the value of the hostname.
- Configure HAProxy on a load balancer server (`lb-01`) to distribute traffic between `web-01` and `web-02`.
- Write Bash scripts to automate the configuration of these servers.

## Getting Started

### Prerequisites

- Access to three Ubuntu servers:
  - `web-01`
  - `web-02`
  - `lb-01`
