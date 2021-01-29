# Conventions

## `X-API-Key` Header

The `X-API-Key` or `x-api-key` (case-insensitive) request header is the authentication method that Subscan API uses to determine the identity and rate limits.

Every individual request to Subscan API must be attached with the header and the correct key, otherwise a `401 Unauthorized` response will be returned. For example, if the key was invaild:

<div class="center-column"></div>

```shell
curl -X POST -H "x-api-key: invalid" https://kusama.api.subscan.io/api/now
```

An example of response body:

<div class="center-column"></div>

```json
{
  "message":"Invalid authentication credentials"
}
```

## Rate Limiting

Each Subscan API key has a request quota, for example, 30 requests per second at most. Please contact us for the plans and pricing.

Currently, the quotas are global - shared across all APIs, all networks, and all client IP addresses as well.

For instance, if an API key has a quota of *10* requests per second:

- Client *A* requests `https://polkadot.api.subscan.io/api/now` with an API key;
- Simultaneously, client *B* requests `https://kusama.api.subscan.io/api/scan/metadata` with the same API key.
- After these *2* requests, only *8* requests with the same API key are allowed in that second.

Subscan API respects the Internet-Draft [RateLimit Header Fields for HTTP](https://tools.ietf.org/html/draft-polli-ratelimit-headers-01). Through the headers of any response, it is simple to retrieve the limit (`ratelimit-limit`), remaining quota (`ratelimit-remaining`), and the seconds until the limit resets (`ratelimit-reset`) of your key. For example, send any request:

<div class="center-column"></div>

```shell
curl -isS -X POST -H "x-api-key: YOUR_KEY" https://kusama.api.subscan.io/api/now
```

An example of partial response headers:

<div class="center-column"></div>

```
ratelimit-remaining: 7
ratelimit-limit: 10
ratelimit-reset: 22
```

If the client reached the rate limit, all other requests in the time slot will be throttled with an HTTP `429 Too Many Requests` response that contains a [`retry-after` header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After).

An example of partial response headers:

<div class="center-column"></div>

```
retry-after: 4
ratelimit-remaining: 0
ratelimit-limit: 10
ratelimit-reset: 4
```

An example of response body:

<div class="center-column"></div>

```json
{
  "message":"API rate limit exceeded"
}
```

<aside class="notice">
It is highly recommended to build your client with a backoff strategy to wait for <code>"retry-after"</code> seconds when hitting rate limits.
</aside>

## HTTP Status Codes

The table down below lists several HTTP status codes that Subscan might respond.

| Code                      | Meaning                                                                                                                   |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| 200 OK                    | The request was handled without any error.                                                                                |
| 401 Unauthorized          | The credentials is either not found or invalid. Please refer to the `message` field in the JSON response for more detail. |
| 404 Not Found             | The HTTP method or request URI was most likely wrong.                                                                     |
| 429 Too Many Requests     | The requests hit the rate limit. Please refer to the HTTP headers `ratelimit-limit`, `ratelimit-reset` for more detail.   |
| 500 Internal Server Error | The servers could not respond your request due to probably a bug.                                                         |
| 502 Bad Gateway           | The servers could not respond your request due to probably a bug.                                                         |
| 503 Service Unavailable   | The services were under maintenance. Please try again later.                                                              |
