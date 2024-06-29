# Puppet SSH config
file_line { 'Turn off passwd auth':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    line    => 'PermitRootLogin no',
}

file_line { '/Declare identity file':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    line    => 'IdentityFile ~/.ssh/school',
}
