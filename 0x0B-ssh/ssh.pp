class ssh {
  # تمكين خدمة SSH
  service { 'ssh':
    ensure => 'running',
    enable => true,
  }
}
