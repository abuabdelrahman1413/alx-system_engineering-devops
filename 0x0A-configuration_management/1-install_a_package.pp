#~/.local/state/nvim/swap//%home%mohammed%Projects%Alx_projects%a

package {['python3', 'python3-pip']:
    ensure => installed,
}

exec {'install_flask':
    command => '/usr/bin/pip3 install Flask==2.1',
    path    => ['/usr/bin/'],
    require => Package['python3-pip'],
}
