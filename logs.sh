#!/bin/bash
docker exec -it squid tail -f /var/log/squid/access.log
