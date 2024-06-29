# script configuration ssh config

'Host *'                 => {
  'SendEnv'              => 'LANG LC_*',
  'HashKnownHosts'       => 'yes',
  'GSSAPIAuthentication' => 'yes',
  'PasswordAuthentication' => 'no',
  'User'                 => 'ubunti',
  'HostName'             => '54.174.46.81',
  'IdentityFile'         => '~/.ssh/school',
}
