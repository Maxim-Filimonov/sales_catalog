# development.pp
stage { 'req-install': before => Stage['rvm-install'] }

class requirements {
  group { 'puppet': ensure => 'present', }

  exec { "apt-update":
    command => "/usr/bin/apt-get -y update"
  }

  exec { 'update-locale-utf8':
    command => '/usr/sbin/update-locale LANG=en_AU.UTF-8', 
    unless => '/bin/echo $LANG | /bin/grep UTF-8'
  } 

  package {
    ["postgresql","libpq-dev"]:
      ensure => installed, require => [ Exec['apt-update'],Exec['update-locale-utf8'] ]
  }
}

class installrvm {
  include rvm
  rvm::system_user { vagrant: ; }
  rvm_system_ruby {
    'ruby-1.9.3-p194':
      ensure => 'present',
      default_use => true;
  }
}

class devtools {
  package {
    ["vim","tmux"]: ensure => installed
  }
}
class doinstall {
  class { requirements:, stage => 'req-install' }
  include installrvm
  include devtools
}

include doinstall
