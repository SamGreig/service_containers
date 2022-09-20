#!/bin/bash

nats consumer add USER AMIDO_USER_INGESTER --filter '' \
    --ack explicit --pull --deliver all --max-deliver=-1 \
    --backoff=none --max-pending=10 --replay=instant \
    --max-waiting=10 --sample=-1 --no-headers-only

nats consumer add FRIENDGROUP AMIDO_FRIENDGROUP_INGESTER --filter '' \
    --ack explicit --pull --deliver all --max-deliver=-1 \
    --backoff=none --max-pending=10 --replay=instant \
    --max-waiting=10 --sample=-1 --no-headers-only