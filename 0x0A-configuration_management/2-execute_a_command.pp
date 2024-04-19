#This script kills a process and works together with the killmenow file which has already been provided
exec { 'killmenow':
  command  =>  '/usr/bin/pkill killmenow',
  provider =>  'shell',
  return   =>  [0, 1],
}