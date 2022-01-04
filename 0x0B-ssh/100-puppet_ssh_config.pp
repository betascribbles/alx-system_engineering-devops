# Setup client config file
# connect to server without password

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/etc/ssh/shhh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Delare identity file':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/schol',
}
