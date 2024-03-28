# Ensure SSH client configuration directory exists
file { '/home/your_username/.ssh':
  ensure  => directory,
  mode    => '0700',
  owner   => 'your_username',
  group   => 'your_group',  # Replace with your actual username and group
}

# Configure SSH client to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  ensure => present,
  path   => '/home/your_username/.ssh/config',
  line   => 'IdentityFile ~/.ssh/school',
}

# Configure SSH client to refuse password authentication
file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/home/your_username/.ssh/config',
  line   => 'PasswordAuthentication no',
}

