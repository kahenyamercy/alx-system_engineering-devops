# Puppet Manifest to kill a process named 'killmenow'
# Only kills the process if it exists
# Exits with a 0 return code if the process doesn't exist

exec { 'killmenow':
  command => '/usr/bin/pkill -9 -f killmenow',
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
