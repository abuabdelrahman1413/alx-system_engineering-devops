# Puppet SSH config
file_line { '/etc/ssh/sshd_config':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    line    => 'PermitRootLogin no',
}

file_line { '/etc/ssh/sshd_config':
    ensure  => 'present',
    path    => '/etc/ssh/ssh_config',
    line    => 'IdentityFile ~/.ssh/school',
}
