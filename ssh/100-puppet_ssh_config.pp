#This puppet is making sure that our config file doesn't allow passwords and uses ~/.ssh/school as our ssh key
file_line { 'Declare identity file':
  ensure => present,
  path   => 'home/ubuntu/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
}

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => 'home/ubuntu/.ssh/config',
  line   => '    PasswordAuthentication no',
}
