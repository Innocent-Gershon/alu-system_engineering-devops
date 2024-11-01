# This Puppet manifest configures the SSH client to use a specific private key
# and disables password authentication.

# Ensure the SSH config file is present with the required settings
file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => @("END_CONTENT")
    Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
END_CONTENT
}

