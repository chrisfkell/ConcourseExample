#!/bin/bash

bosh -n -d concourse deploy concourse-bosh-deployment/cluster/concourse.yml \
  -o concourse-bosh-deployment/cluster/operations/privileged-http.yml \
  -o concourse-bosh-deployment/cluster/operations/privileged-https.yml \
  -o concourse-bosh-deployment/cluster/operations/basic-auth.yml \
  -o concourse-bosh-deployment/cluster/operations/tls-vars.yml \
  -o concourse-bosh-deployment/cluster/operations/tls.yml \
  -o concourse-bosh-deployment/cluster/operations/uaa.yml \
  -o concourse-bosh-deployment/cluster/operations/credhub-colocated.yml \
  -o concourse-bosh-deployment/cluster/operations/offline-releases.yml \
  -o concourse-bosh-deployment/cluster/operations/backup-atc-colocated-web.yml \
  -o concourse-bosh-deployment/cluster/operations/secure-internal-postgres.yml \
  -o concourse-bosh-deployment/cluster/operations/secure-internal-postgres-bbr.yml \
  -o concourse-bosh-deployment/cluster/operations/secure-internal-postgres-uaa.yml \
  -o concourse-bosh-deployment/cluster/operations/scale.yml\
  -v worker_instances=3 \
  -o concourse-bosh-deployment/cluster/operations/secure-internal-postgres-credhub.yml \
  -l vars.yml \
  -l concourse-bosh-deployment/versions.yml
