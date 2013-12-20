provides 'private_ip'

require_plugin 'network'

addresses = network.interfaces.map { |name, i| i['addresses'].keys }.flatten

private_ip addresses.grep(/^10\.|^172\.1[6-9]\.|^172\.2\d\.|^172\.3[0-1]\.|^192\.168/).first
