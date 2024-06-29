class ssh {
    file { '/etc/ssh/ssh_config':
        ensure => 'present',
    }
    file_line { 'Turn off passwd auth':
        ensure => 'present',
        path   => '/etc/ssh/ssh_config',
        line   => 'PasswordAuthentication no',
        match  => '^#?PasswordAuthentication\s+.*',
    }
    file_line { 'Declare identity file':
        ensure => 'present',
        path   => '/etc/ssh/ssh_config',
        line   => 'IdentityFile ~/.ssh/school',
        match  => '^#?IdentityFile\s+.*',
    }

}

include ssh
