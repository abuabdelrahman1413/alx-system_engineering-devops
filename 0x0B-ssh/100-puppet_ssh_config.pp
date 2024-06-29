# script configuration ssh config
# Declare identity file
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config/config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}

# Turn off password authentication
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config/config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}
