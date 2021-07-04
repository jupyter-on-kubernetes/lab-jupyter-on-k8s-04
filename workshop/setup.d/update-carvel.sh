#!/bin/bash

set -x

set -eo pipefail

# This workaround is due to lack of shasum in workshop image. The underlying
# problem is actually in the Carvel installer and it needs to changed, but
# Educates workshop image should also probably install it.
#   https://github.com/eduk8s/base-environment/issues/104
#   https://github.com/vmware-tanzu/carvel.dev/issues/129

mkdir /tmp/carvel

echo > /tmp/carvel/shasum << EOF
#!/bin/bash

if [ "$1" = "-v" ]; then
    exec sha1sum --version
fi

exec sha256sum "$@"
EOF

chmod +x /tmp/carvel/shasum

PATH=/tmp/carvel:$PATH

curl -L --silent --show-error --fail -o /tmp/carvel.sh https://carvel.dev/install.sh && \
    export K14SIO_INSTALL_BIN_DIR=/opt/kubernetes/bin && \
    sh -x /tmp/carvel.sh && \
    rm /tmp/carvel.sh

rm -rf /tmp/carvel
