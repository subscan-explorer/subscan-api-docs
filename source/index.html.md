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

We can provide our customers the Service Level Agreement (SLA), which includes **Monthly Uptime Percentage** commitment. Please contact us ([api@subscan.io](mailto:api@subscan.io)) for more detail.

## Endpoints

Please notice that the list of the endpoints is maintained mannually and it might be outdated. In fact, every individual network supported on Subscan.io will have available API endpoint as well. The naming convention of the endpoints are `https://NETWORK_NAME.api.subscan.io` where the `NETWORK_NAME` is the same as the subdomain of the corresponding network on subscan.io.

| Network                                 | API Endpoint                                  |
| --------------------------------------- | --------------------------------------------- |
| Polkadot                                | <https://polkadot.api.subscan.io/>            |
| Kusama                                  | <https://kusama.api.subscan.io/>              |
| Darwinia                                | <https://darwinia.api.subscan.io/>            |
| Darwinia Crab                           | <https://crab.api.subscan.io/>                |
| Karura                                  | <https://karura.api.subscan.io/>              |
| ChainX                                  | <https://chainx.api.subscan.io/>              |
| Edgeware                                | <https://edgeware.api.subscan.io/>            |
| Centrifuge                              | <https://centrifuge.api.subscan.io/>          |
| Plasm                                   | <https://plasm.api.subscan.io/>               |
| Kulupu                                  | <https://kulupu.api.subscan.io/>              |
| Clover                                  | <https://clover.api.subscan.io/>              |
| KILT Mashnet                            | <https://kilt-testnet.api.subscan.io/>        |
| DeepBrain Chain                         | <https://dbc.api.subscan.io/>                 |
| Stafi                                   | <https://stafi.api.subscan.io/>               |
| Equilibrium                             | <https://equilibrium.api.subscan.io/>         |
| DataHighway                             | <https://datahighway.api.subscan.io/>         |
| Dock                                    | <https://dock.api.subscan.io/>                |
| Rococo                                  | <https://rococo.api.subscan.io/>              |
| Westend                                 | <https://westend.api.subscan.io/>             |
| Moonbase                                | <https://moonbase.api.subscan.io/>            |
| Clover Testnet                          | <https://clover-testnet.api.subscan.io/>      |
| Gateway                                 | <https://gateway-testnet.api.subscan.io/>     |
| Acala Mandala                           | <https://acala-testnet.api.subscan.io/>       |
| Phala Rorschach                         | <https://phala.api.subscan.io/>               |
| Bifrost Asgard                          | <https://bifrost.api.subscan.io/>             |
| Crust Maxwell                           | <https://crust.api.subscan.io/>               |
| Manta                                   | <https://manta-testnet.api.subscan.io/>       |
| DataHighway Harbour                     | <https://datahighway-harbour.api.subscan.io/> |
| Laminar TC2                             | <https://laminar-testnet.api.subscan.io/>     |
| Pangolin                                | <https://pangolin.api.subscan.io/>            |
