
# 1-install_a_package.pp

# Ensure Python and pip3 are installed
package { ['python3', 'python3-pip']:
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3 provider
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
