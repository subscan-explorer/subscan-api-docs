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
  - crust

search: false

code_clipboard: true
---

# Introduction

With Subscan API, we provide a simple way to access the chain data of more than 10 substrate-based networks.

If you have any question or suggestion, please do not hesitate to contact our API support via [api@subscan.io](mailto:api@subscan.io).

The documentation was created with [Slate](https://github.com/slatedocs/slate) and hosted on [GitHub](https://github.com/itering/subscan-api-docs).

## API Keys

**Submit the form to get a free API key that includes higher quotas or start your trial with other available plans: <https://forms.gle/YegvB8S2VGhASMQi6>.**

## Service Status

The service status of Subscan API can be found on our [status page](https://subscan.statuspage.io).

## Service Level Agreement

Subscan provides our customers the Service Level Agreement (SLA), which includes **Monthly Uptime Percentage** commitment for multiple networks. Please contact us ([api@subscan.io](mailto:api@subscan.io)) for more information.

## API Endpoints

Please notice before you get started:

1. The following endpoints list is maintained mannually and it might be outdated. In fact, every individual network supported on Subscan.io will have available API endpoint as well. The endpoint naming convention is `https://$NETWORK_NAME.api.subscan.io` where the `$NETWORK_NAME` is the same as the subdomain of the corresponding network on Subscan.io.

2. All the endpoints are forced to HTTPS only. Please make sure you use `https://` with the API hosts.

3. SLA covered endpoints are shown on our [service status page](https://subscan.statuspage.io/). Several networks are excluded from our SLA for now. It might because: 1) the network is a testnet, not as stable as a mainnet, or could be reset in a relatively higher chance; 2) the chain RPC that Subscan relied on is maintained by others (e.g. the chain developers). We may update the covered list in the future. Please let us know if you want to have other networks included in the SLA.

| Network             | API Host                             |
| ------------------- | ------------------------------------ |
| Polkadot            | `polkadot.api.subscan.io`            |
| Kusama              | `kusama.api.subscan.io`              |
| Darwinia            | `darwinia.api.subscan.io`            |
| Acala               | `acala.api.subscan.io`               |
| Acala Mandala       | `acala-testnet.api.subscan.io`       |
| Alephzero           | `alephzero.api.subscan.io`           |
| Astar               | `astar.api.subscan.io`               |
| Altair              | `altair.api.subscan.io`              |
| Bifrost             | `bifrost.api.subscan.io`             |
| Calamari            | `calamari.api.subscan.io`            |
| Centrifuge          | `centrifuge.api.subscan.io`          |
| Centrifuge Parachain| `centrifuge-parachain.api.subscan.io`|
| ChainX              | `chainx.api.subscan.io`              |
| Clover              | `clover.api.subscan.io`              |
| Clover Parachain    | `clv.api.subscan.io`                 |
| Clover Testnet      | `clover-testnet.api.subscan.io`      |
| Composable          | `composable.api.subscan.io`          |
| Crab Parachain      | `crab-parachain.api.subscan.io`      |
| Crust               | `crust.api.subscan.io`               |
| Crust Maxwell       | `maxwell.api.subscan.io`             |
| Crust Shadow        | `shadow.api.subscan.io`              |
| Dali                | `dali.api.subscan.io`                |
| Darwinia Crab       | `crab.api.subscan.io`                |
| DataHighway         | `datahighway.api.subscan.io`         |
| DataHighway Harbour | `datahighway-harbour.api.subscan.io` |
| DeepBrain Chain     | `dbc.api.subscan.io`                 |
| Dock                | `dock.api.subscan.io`                |
| Dolphin             | `dolphin.api.subscan.io`             |
| Edgeware            | `edgeware.api.subscan.io`            |
| Encointer           | `encointer.api.subscan.io`           |
| Equilibrium         | `equilibrium.api.subscan.io`         |
| IntegriTEE          | `integritee.api.subscan.io`          |
| Interlay            | `interlay.api.subscan.io`            |
| Karura              | `karura.api.subscan.io`              |
| Kintsugi            | `kintsugi.api.subscan.io`            |
| Kulupu              | `kulupu.api.subscan.io`              |
| Khala               | `khala.api.subscan.io`               |
| KILT Peregrine      | `kilt-testnet.api.subscan.io`        |
| KILT Spiritnet      | `spiritnet.api.subscan.io`           |
| Laminar TC2         | `laminar-testnet.api.subscan.io`     |
| Litmus              | `litmus.api.subscan.io`              |
| Mangata             | `mangata.api.subscan.io`             |
| Manta               | `manta-testnet.api.subscan.io`       |
| Moonbase            | `moonbase.api.subscan.io`            |
| Moonbeam            | `moonbeam.api.subscan.io`            |
| Moonriver           | `moonriver.api.subscan.io`           |
| Nodle               | `nodle.api.subscan.io`               |
| Pangolin            | `pangolin.api.subscan.io`            |
| Pangolin Parachain  | `pangolin-parachain.api.subscan.io`  |
| Pangoro             | `pangoro.api.subscan.io`             |
| Parallel            | `parallel.api.subscan.io`            |
| Parallel Heiko      | `parallel-heiko.api.subscan.io`      |
| Phala Rorschach     | `phala.api.subscan.io`               |
| Picasso             | `picasso.api.subscan.io`             |
| Pioneer             | `pioneer.api.subscan.io`             |
| Polkadex            | `polkadex.api.subscan.io`            |
| Polymesh            | `polymesh.api.subscan.io`            |
| Polymesh Testnet    | `polymesh-testnet.api.subscan.io`    |
| Plasm               | `plasm.api.subscan.io`               |
| Quartz              | `quartz.api.subscan.io`              |
| Reef                | `reef.api.subscan.io`                |
| Robonomics          | `robonomics-testnet.api.subscan.io`  |
| Rococo              | `rococo.api.subscan.io`              |
| Sakura              | `sakura.api.subscan.io`              |
| Shibuya             | `shibuya.api.subscan.io`             |
| Shiden              | `shiden.api.subscan.io`              |
| SORA                | `sora.api.subscan.io`                |
| Subgame             | `subgame.api.subscan.io`             |
| Stafi               | `stafi.api.subscan.io`               |
| Statemine           | `statemine.api.subscan.io`           |
| Statemint           | `statemint.api.subscan.io`           |
| Uniarts             | `uniarts.api.subscan.io`             |
| Westend             | `westend.api.subscan.io`             |
| Zeitgeist           | `zeitgeist.api.subscan.io`           |
