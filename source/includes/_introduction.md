
# Introduction

With Subscan API, we provide a simple way to access the chain data of more than 10 substrate-based networks.

If you have any question or suggestion, please do not hesitate to contact our API support via [api@subscan.io](mailto:api@subscan.io).

The documentation was created with [Slate](https://github.com/slatedocs/slate) and hosted on [GitHub](https://github.com/subscan-explorer/subscan-api-docs).

## API Keys

**Get a free API key that includes higher quotas or start your trial with other available plans at <https://pro.subscan.io/>.**

## Service Status

The service status of Subscan API can be found on our [status page](https://subscan.statuspage.io).

## Service Level Agreement

Subscan provides our customers the Service Level Agreement (SLA), which includes **Monthly Uptime Percentage** commitment for multiple networks. Please contact us ([api@subscan.io](mailto:api@subscan.io)) for more information.

## API Endpoints

Please notice before you get started:

1. The following endpoints list is maintained mannually and it might be outdated. In fact, every individual network supported on Subscan.io will have available API endpoint as well. The endpoint naming convention is `https://$NETWORK_NAME.api.subscan.io` where the `$NETWORK_NAME` is the same as the subdomain of the corresponding network on Subscan.io.

2. All the endpoints are forced to HTTPS only. Please make sure you use `https://` with the API hosts.

3. SLA covered endpoints are shown on our [service status page](https://subscan.statuspage.io/). Several networks are excluded from our SLA for now. It might because: 1) the network is a testnet, not as stable as a mainnet, or could be reset in a relatively higher chance; 2) the chain RPC that Subscan relied on is maintained by others (e.g. the chain developers). We may update the covered list in the future. Please let us know if you want to have other networks included in the SLA.

4. The **Status** marked as **live** is production network, and it will be maintained continuously. The **Status** marked as **test** is test network, which may be unstable. Some new features of Subscan will be updated on testnet first.

| Network            | API Host                                       | Status |
| ------------------ | ---------------------------------------------- | ------ |
| Polkadot           | `polkadot.api.subscan.io`                      | live   |
| Kusama             | `kusama.api.subscan.io`                        | live   |
| Darwinia2          | `darwinia.api.subscan.io`                      | live   |
| Assethub Polkadot  | `assethub-polkadot.api.subscan.io`             | live   |
| Assethub Kusama    | `assethub-kusama.api.subscan.io`               | live   |
| Assethub Rococo    | `assethub-rococo.api.subscan.io`               | test   |
| Acala              | `acala.api.subscan.io`                         | live   |
| Acala Mandala      | `acala-testnet.api.subscan.io`                 | test   |
| Alephzero          | `alephzero.api.subscan.io`                     | live   |
| Altair             | `altair.api.subscan.io`                        | live   |
| Astar              | `astar.api.subscan.io`                         | live   |
| Bajun              | `bajun.api.subscan.io`                         | live   |
| Basilisk           | `basilisk.api.subscan.io`                      | live   |
| Bifrost            | `bifrost.api.subscan.io`                       | live   |
| Bifrost Kusama     | `bifrost-kusama.api.subscan.io`                | live   |
| Bifrost Testnet    | `bifrost-testnet.api.subscan.io`               | live   |
| Calamari           | `calamari.api.subscan.io`                      | live   |
| Centrifuge         | `centrifuge.api.subscan.io`                    | live   |
| Centrifuge Solo    | `centrifuge-standalone-history.api.subscan.io` | live   |
| ChainX             | `chainx.api.subscan.io`                        | live   |
| Clover             | `clover.api.subscan.io`                        | live   |
| Clover Parachain   | `clv.api.subscan.io`                           | live   |
| Clover Testnet     | `clover-testnet.api.subscan.io`                | test   |
| Composable         | `composable.api.subscan.io`                    | live   |
| Crab2              | `crab.api.subscan.io`                          | live   |
| Crust              | `crust.api.subscan.io`                         | live   |
| Crust Maxwell      | `maxwell.api.subscan.io`                       | test   |
| Crust Shadow       | `shadow.api.subscan.io`                        | live   |
| DeepBrain Chain    | `dbc.api.subscan.io`                           | live   |
| Dock               | `dock.api.subscan.io`                          | live   |
| Dolphin            | `dolphin.api.subscan.io`                       | test   |
| Edgeware           | `edgeware.api.subscan.io`                      | live   |
| Efinity            | `efinity.api.subscan.io`                       | live   |
| Encointer          | `encointer.api.subscan.io`                     | live   |
| Equilibrium        | `equilibrium.api.subscan.io`                   | live   |
| Genshiro           | `genshiro.api.subscan.io`                      | live   |
| Humanode           | `humanode.api.subscan.io`                      | live   |
| HydraDX            | `hydradx.api.subscan.io`                       | live   |
| IntegriTEE         | `integritee.api.subscan.io`                    | live   |
| Interlay           | `interlay.api.subscan.io`                      | live   |
| Karura             | `karura.api.subscan.io`                        | live   |
| Kintsugi           | `kintsugi.api.subscan.io`                      | live   |
| Khala              | `khala.api.subscan.io`                         | live   |
| krest              | `krest.api.subscan.io`                         | live   |
| KILT Peregrine     | `kilt-testnet.api.subscan.io`                  | test   |
| KILT Spiritnet     | `spiritnet.api.subscan.io`                     | live   |
| Litmus             | `litmus.api.subscan.io`                        | live   |
| Mangata            | `mangatax.api.subscan.io`                      | live   |
| Moonbase           | `moonbase.api.subscan.io`                      | test   |
| Moonbeam           | `moonbeam.api.subscan.io`                      | live   |
| Moonriver          | `moonriver.api.subscan.io`                     | live   |
| Nodle              | `nodle.api.subscan.io`                         | live   |
| Origintrail        | `origintrail.api.subscan.io`                   | live   |
| Origintrail Testnet| `origintrail-testnet.api.subscan.io`           | test   |
| Pangolin           | `pangolin.api.subscan.io`                      | test   |
| Pangolin Parachain | `pangolin-parachain.api.subscan.io`            | test   |
| Pangoro            | `pangoro.api.subscan.io`                       | test   |
| Parallel           | `parallel.api.subscan.io`                      | live   |
| Parallel Heiko     | `parallel-heiko.api.subscan.io`                | live   |
| peaq               | `peaq-testnet.api.subscan.io`                  | live   |
| Phala              | `phala.api.subscan.io`                         | live   |
| Picasso            | `picasso.api.subscan.io`                       | live   |
| Picasso Rococo     | `picasso-rococo.api.subscan.io`                | test   |
| Pioneer            | `pioneer.api.subscan.io`                       | live   |
| Polkadex           | `polkadex.api.subscan.io`                      | live   |
| Polymesh           | `polymesh.api.subscan.io`                      | live   |
| Polymesh Testnet   | `polymesh-testnet.api.subscan.io`              | test   |
| Plasm              | `plasm.api.subscan.io`                         | live   |
| Quartz             | `quartz.api.subscan.io`                        | live   |
| Reef               | `reef.api.subscan.io`                          | live   |
| Robonomics         | `robonomics.api.subscan.io`                    | live   |
| Rococo             | `rococo.api.subscan.io`                        | test   |
| Sakura             | `sakura.api.subscan.io`                        | live   |
| Shibuya            | `shibuya.api.subscan.io`                       | test   |
| Shiden             | `shiden.api.subscan.io`                        | live   |
| SORA               | `sora.api.subscan.io`                          | live   |
| Subspace           | `subspace.api.subscan.io`                      | live   |
| Stafi              | `stafi.api.subscan.io`                         | live   |
| Tanganika          | `datahighway.api.subscan.io`                   | live   |
| Turing             | `turing.api.subscan.io`                        | live   |
| Unique             | `unique.api.subscan.io`                        | live   |
| Vara               | `vara.api.subscan.io`                          | live   |
| Westend            | `westend.api.subscan.io`                       | test   |
| Zeitgeist          | `zeitgeist.api.subscan.io`                     | live   |
