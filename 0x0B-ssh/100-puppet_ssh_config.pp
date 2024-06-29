# Define a class for SSH client configuration
class { 'ssh_config': }

# Define a resource to manage the "IdentityFile" line
file_line { 'Declare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',  # Adjust path if needed on your system
  line   => 'IdentityFile ~/.ssh/school',
}

# Define a resource to disable password authentication
file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/ssh_config',  # Adjust path if needed on your system
  line   => 'PasswordAuthentication no',
}
