# 2-execute_a_command.pp

# Execute a command
exec { 'killmenow':
    command => '/usr/bin/pkill killmenow',
}
