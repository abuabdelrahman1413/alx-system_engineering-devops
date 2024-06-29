# configure ssh server 
# IdentityFile ~/.ssh/school
# password no

class ssh {
    file_line { 'Turn off passwd auth':
        ensure => 'create',
        path   => '/etc/ssh/ssh_config',
        line   => 'PasswordAuthentication no',
    }
    file_line { 'Declare identity file':
        ensure => 'create',
        path   => '/etc/ssh/ssh_config',
        line   => 'IdentityFile ~/.ssh/school',
    }
}
