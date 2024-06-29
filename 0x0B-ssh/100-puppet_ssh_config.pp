# script configuration ssh config

'Host *'                 => {
  'SendEnv'              => 'LANG LC_*',
  'HashKnownHosts'       => 'yes',
  'GSSAPIAuthentication' => 'yes',
  'PasswordAuthentication' => 'no',
  'IdentityFile'         => '~/.ssh/school',
}
