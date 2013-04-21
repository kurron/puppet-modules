# This module will ensure that virtual machines are virtualization "friendly"

class gui-desktop {

    if $operatingsystem == 'ubuntu' {
        # GUI desktop 
        package { 'ubuntu-desktop':
            ensure => installed 
        }
    }
}

class { 'gui-desktop' : }
