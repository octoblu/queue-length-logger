#!/bin/bash

if [ -z "${REDIS_HOST}" -o -z "${QUEUE_NAME}" ]; then
  echo "Cowardly refusing to do anything..."
  exit 1
fi

QUEUE_LENGTH=$(redis-cli -h ${REDIS_HOST} llen ${QUEUE_NAME})

echo "queue-length ${QUEUE_NAME}: ${QUEUE_LENGTH}"
