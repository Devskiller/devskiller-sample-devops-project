#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

apt-get install vim nano joe

mkdir /var/lib/calculator

cat <<EOF > /var/lib/calculator/calc.sh
#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

# Put your code here
EOF
