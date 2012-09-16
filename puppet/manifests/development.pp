# development.pp
class doinstall {
  include pgsql_config
}
class pgsql_config {
  file { "postgresql-server-config":
    name    => "/var/pgsql/data/postgresql.conf",
    ensure  => present,
    content => template('postgresql.conf.erb'),
    owner   => 'postgres',
    mode    => '0644',
  }
  file { "postgresql-hba-config":
    name    => "/var/pgsql/data/pg_hba.conf",
    ensure  => present,
    content => template('pg_hba.conf.erb'),
    owner   => 'postgres',
    mode    => '0644',
  }
  exec { "postgres_restart":
    command => "/usr/bin/pg_ctl restart -D /var/pgsql/data",
    user => 'postgres',
    refreshonly => true,
    subscribe => File["postgresql-hba-config", "postgresql-server-config"],
  }

}
include doinstall
