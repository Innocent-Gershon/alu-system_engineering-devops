file { '/home/vagrant/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0600',
  content => template('ssh_config.erb'),
}

file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/sshd_config',
  line  => 'PasswordAuthentication no',
  match => 'PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/sshd_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => 'IdentityFile',
}

