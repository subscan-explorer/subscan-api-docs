---
title: Subscan API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell: cURL

includes:
  - conventions
  - general
  - staking
  - price
  - governance
  - runtime
  - v2
  - para
  - evm
  - gateway

search: false

code_clipboard: true
---

# Introduction

With Subscan API, we provide a simple way to access the chain data of more than 10 substrate-based networks.

If you have any question or suggestion, please do not hesitate to contact our API support via [api@subscan.io](mailto:api@subscan.io).

The documentation was created with [Slate](https://github.com/slatedocs/slate) and hosted on [GitHub](https://github.com/itering/subscan-api-docs).

## API Keys

**[Apply this form](https://docs.google.com/forms/d/e/1FAIpQLSfEDvsn-v7c5jshKFNaqBd20-SPAHLJw3Ua7IRUL8esrTgWPA/viewform) to get a free API key that includes higher quotas or start your trial with other subscriptions!**

## Service Status

The service status of Subscan API can be found on our [status page](https://subscan.statuspage.io).

## Service Level Agreement

Subscan provides our customers the Service Level Agreement (SLA), which includes **Monthly Uptime Percentage** commitment for multiple networks. Please contact us ([api@subscan.io](mailto:api@subscan.io)) for more information.

## API Endpoints

Please notice before you get started:

1. The following endpoints list is maintained mannually and it might be outdated. In fact, every individual network supported on Subscan.io will have available API endpoint as well. The endpoint naming convention is `https://$NETWORK_NAME.api.subscan.io` where the `$NETWORK_NAME` is the same as the subdomain of the corresponding network on Subscan.io.

2. All the endpoints are forced to HTTPS only. Please make sure you use `https://` with the API hosts.

3. The API endpoints of several networks are excluded from our SLA for now. It might because: 1) the network is a testnet, not as stable as a mainnet, or could be reset in a relatively higher chance; 2) the chain RPC that Subscan relied on is maintained by others (e.g. the chain developers). We may update the covered list in the future. Please let us know if you want to have other networks included in the SLA.

| Network             | API Host                             | SLA Covered |
| ------------------- | ------------------------------------ | ----------- |
| Polkadot            | `polkadot.api.subscan.io`            | *           |
| Kusama              | `kusama.api.subscan.io`              | *           |
| Darwinia            | `darwinia.api.subscan.io`            | *           |
| Darwinia Crab       | `crab.api.subscan.io`                | *           |
| Edgeware            | `edgeware.api.subscan.io`            | *           |
| ChainX              | `chainx.api.subscan.io`              | *           |
| Kulupu              | `kulupu.api.subscan.io`              | *           |
| Acala Mandala       | `acala-testnet.api.subscan.io`       |             |
| Bifrost Asgard      | `bifrost.api.subscan.io`             |             |
| Centrifuge          | `centrifuge.api.subscan.io`          |             |
| Clover              | `clover.api.subscan.io`              |             |
| Clover Testnet      | `clover-testnet.api.subscan.io`      |             |
| Crust Maxwell       | `crust.api.subscan.io`               |             |
| DataHighway         | `datahighway.api.subscan.io`         |             |
| DataHighway Harbour | `datahighway-harbour.api.subscan.io` |             |
| DeepBrain Chain     | `dbc.api.subscan.io`                 |             |
| Dock                | `dock.api.subscan.io`                |             |
| Equilibrium         | `equilibrium.api.subscan.io`         |             |
| Gateway             | `gateway-testnet.api.subscan.io`     |             |
| KILT Mashnet        | `kilt-testnet.api.subscan.io`        |             |
| Laminar TC2         | `laminar-testnet.api.subscan.io`     |             |
| Moonbase            | `moonbase.api.subscan.io`            |             |
| Pangolin            | `pangolin.api.subscan.io`            |             |
| Phala Rorschach     | `phala.api.subscan.io`               |             |
| Plasm               | `plasm.api.subscan.io`               |             |
| Rococo              | `rococo.api.subscan.io`              |             |
| Stafi               | `stafi.api.subscan.io`               |             |
| Westend             | `westend.api.subscan.io`             |             |
