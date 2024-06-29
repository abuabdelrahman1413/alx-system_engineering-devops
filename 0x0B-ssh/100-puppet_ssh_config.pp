# configure ssh server 
# IdentityFile ~/.ssh/school
# password no

class ssh {
    service { 'ssh':
        ensure => 'running',
        enable => true,
    }
    file_line { 'IdentityFile':
        path => '/etc/ssh/sshd_config',
        line => 'IdentityFile ~/.ssh/school',
    }
    file_line { 'PasswordAuthentication':
        path => '/etc/ssh/sshd_config',
        line => 'PasswordAuthentication no',
    }
}
