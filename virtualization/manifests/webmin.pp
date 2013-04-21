# This module will ensure that virtual machines are virtualization "friendly"

class webmin {

    if $operatingsystem == 'ubuntu' {
        # wget 
        package { 'wget':
            ensure => installed 
        }
    }
}

class { 'webmin' : }
