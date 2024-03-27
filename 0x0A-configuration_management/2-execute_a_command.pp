exec { 'killmenow':
  command     => '/usr/bin/pkill -f killmenow',
  path        => ['/usr/bin', '/bin'], # Include the path to pkill command
  refreshonly => true,
}

