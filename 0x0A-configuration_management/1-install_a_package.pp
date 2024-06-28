# 1-install_a_package.pp

# Ensure Python and pip3 are installed
package { ['python3', 'python3-pip']:
  ensure => installed,
}

# Install Flask version 2.1.0 and compatible Werkzeug version using pip3 provider
package { ['Flask', 'Werkzeug']:
  ensure   => 'installed',
  provider => 'pip3',
  install_options => [
    '--upgrade', 'Flask==2.1.0',
    '--upgrade', 'Werkzeug==2.0.3',
  ],
  require  => Package['python3-pip'],
}
