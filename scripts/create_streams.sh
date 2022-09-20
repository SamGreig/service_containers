#!/bin/bash

nats stream add USER \
    --subjects "USER.created" \
    --subjects "USER.linked" \
    --subjects "USER.deleted" \
    --ack --max-msgs=-1 --max-bytes=-1 --max-age=-1 --storage file \
    --retention interest --max-msg-size=-1 --replicas=1 \
    --max-msgs-per-subject=-1 --dupe-window="2m0s" --discard new \
    --no-allow-rollup --deny-delete --deny-purge

nats stream add FRIENDGROUP \
    --subjects "FRIENDGROUP.created" \
    --subjects "FRIENDGROUP.members-updated" \
    --subjects "FRIENDGROUP.deleted" \
    --ack --max-msgs=-1 --max-bytes=-1 --max-age=-1 --storage file \
    --retention interest --max-msg-size=-1 --replicas=1 \
    --max-msgs-per-subject=-1 --dupe-window="2m0s" --discard new \
    --no-allow-rollup --deny-delete --deny-purge