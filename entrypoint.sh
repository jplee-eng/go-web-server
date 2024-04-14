#!/bin/sh

# Start Hugo, Gin, and Caddy
hugo server --bind 0.0.0.0 --source docs --environment production &
./gowebserver &
caddy run --config /etc/caddy/Caddyfile
