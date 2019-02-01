#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

apt-get install vim nano joe

mkdir -p  /var/lib/candidate

cat <<EOF > /var/lib/candidate/calc.sh
#!/bin/bash

set -o errexit
set -o errtrace
set -o nounset
set -o pipefail

# Put your code here
EOF
