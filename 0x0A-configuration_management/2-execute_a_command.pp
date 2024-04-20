#kills a process and works together with the killmenow file
exec { 'killmenow':
  command  =>  'pkill -f killmenow',
  provider =>  'shell',
  path     =>  ['/usr/bin', '/usr/sbin']
}