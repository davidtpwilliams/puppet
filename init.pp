class users {
  user { 'dave':
  ensure     => present,
  uid        => '507',
  gid        => 'ec2-user',
  shell      => '/bin/zsh',
  home       => '/home/dave',
  managehome => true,
  }
}

