# create file name school, path /tmp, File permission is 0744, File owner is www-data, File group is www-data, File contains I love Puppet

file {'/tmp/school':
    ensure  => 'present',
    content => 'I love Puppet',
    owner   => 'www-data',
    group   => 'www-data',
    mode    => '0774'
}
