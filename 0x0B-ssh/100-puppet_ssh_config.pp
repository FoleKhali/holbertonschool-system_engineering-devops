#set up your client SSH configuration file so that you can connect to a server without typing a password
include stdlib

file_line {'change password':
  ensure => 'present',
  path => '/etc/ssh/ssh_config',
  line => '#   PasswordAuthentication no',
  match => '#   PasswordAuthentication yes',
}

file_line {'change private key':
  ensure => 'present',
  path => '/etc/ssh/ssh_config',
  line => '#   IdentityFile ~/.ssh/school',
  match => '#   IdentityFile ~/.ssh/id_rsa',
}
