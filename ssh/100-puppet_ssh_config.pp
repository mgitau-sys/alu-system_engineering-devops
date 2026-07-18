file_line { 'Declare identity file':
  ensure => present,
  path   => 'home/ubuntu/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
}

File_line { 'Turn off passwd auth':
  ensure => present,
  path   => 'home/ubuntu/.ssh/config',
  line   => '    PasswordAuthentication no',
}
