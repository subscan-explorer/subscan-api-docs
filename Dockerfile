# Source: https://github.com/slatedocs/slate/blob/main/Dockerfile
FROM ruby:2.6-slim AS builder

WORKDIR /srv/slate

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        nodejs

COPY Gemfile Gemfile.lock ./
RUN gem install bundler \
    && bundle install

COPY . .
RUN bundle exec middleman build --clean --verbose

FROM nginx:mainline-alpine
COPY ./nginx-http.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /srv/slate/build /usr/share/nginx/html
