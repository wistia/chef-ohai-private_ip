provides 'private_ip'

addresses = `ifconfig | grep inet | grep -v inet6 | awk '{ print $2 }' | cut -f2 -d ':'`.split("\n")

private_ip addresses.grep(/^10\.|^172\.1[6-9]\.|^172\.2\d\.|^172\.3[0-1]\.|^192\.168/).first

