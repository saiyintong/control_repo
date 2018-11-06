class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1YHw9gAmwJqg5gsakIl1FEChU9ttp+Zbn20F9tCENKTfazjn0gqgmLBwMYyDUK7irCOrSTWDFUPTSoF+Fh68Q/+d/4xbLgFzBxfWIhknFAeboDEqIL778CbGP6n16FZqBXn40e7hrONfwcVO3w3sE5pUt2LiJlycwx02bEe+Xfib0u/k239RzmcDTDSQvBkZeLLQTqlhto37y1f+Ik/4nt1r0b21H2L9n5MsGUWi2aXOo+mAZNsxJjGJFDWkpdGr1xtHOHlCm7/aZD7k5TesyNcMg9roJOQHRBtzXR/cK8NWasirbZyG+9DthjUrNRRsfcfdvr/Jf+QYY7o6Nm8qX',
  }
}
