# This module will ensure that virtual machines are virtualization "friendly"

class virtualization {

     # if in a virtualized enivronment
     if $is_virtual == 'true' {
         if $operatingsystem == 'ubuntu' {
             # so you can do an acp shutdown 
             package { 'acpid':
                 ensure => installed 
             }
             # so that you can install guest additions 
             package { 'dkms':
                 ensure => installed 
             }
             package { 'build-essential':
                 ensure => installed 
             }
             package { 'linux-headers-virtual':
                 ensure => installed 
             }

            # SSH client and servers (meta-package)
             package { 'ssh':
                 ensure => installed 
             }
             service { 'sshd':
                 ensure     => running,
                 enable     => true,
                 hasrestart => true,
                 hasstatus  => true,
                 subscribe  => File['/etc/ssh/sshd_config'],
             }
         }
     }

    #     openssh
}

class { 'virtualization' : }
