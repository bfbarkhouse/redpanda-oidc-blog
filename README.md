# Integrating OIDC with Redpanda

A demonstration showcasing how to integrate **Redpanda** with **OpenID Connect (OIDC)** for authentication and authorization. The preconfigured Docker Compose environment spins up Keycloak, Redpanda Console and a Redpanda Cluster with OIDC authentication.

Redpanda supports OIDC authentication by validating JWT tokens on incoming Kafka API or HTTP API calls through SASL/OAUTHBEARER or HTTP Bearer authentication respectively. You configure an identity provider, provide the introspection URL or JWKS URI, and Redpanda will verify the token’s audience and subject claims to establish principals (such as `user:OIDC:sub@example.com`) for ACL enforcement.

## 📁 Repository Structure
```
.
├── config/ # Redpanda Console and Redpanda node config examples
├── bootstrap.yml # Redpanda cluster bootstrap configuration
├── rpk-profile.yaml # rpk CLI profile for interacting with the cluster
├── docker-compose.yml # Docker Compose stack to launch the demo
├── test-api-oidc.sh # Script to test OIDC authentication against Redpanda APIs
└── README.md # Overview and instructions (this file)
```

## 🛠️ Prerequisites

- Docker & Docker Compose installed.
- [rpk](https://docs.redpanda.com/current/get-started/rpk-install/) installed

## 🚧 Setup & Run

1. Clone the repository:

    ```bash
    git clone https://github.com/bfbarkhouse/redpanda-oidc-blog.git
    cd redpanda-oidc-blog
    ```

2. Review the Redpanda [blog post](https://www.redpanda.com/blog) for a full tutorial

