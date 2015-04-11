class mysql-php {
# execute 'yum update'
  exec { 'yum-update':                    # exec resource named 'yum-update'
  command => '/usr/bin/yum update'  # command this resource will run
  }

# install httpd package
package { 'httpd':
  require => Exec['yum-update'],        # require 'yum-update' before installing
  ensure => installed,
}

# ensure httpd service is running
service { 'httpd':
  ensure => running,
}

# install mysql-server package
package { 'mysql-server':
  require => Exec['yum-update'],        # require 'yum-update' before installing
  ensure => installed,
}

# install mysql package
package { 'mysql':
  require => Exec['yum-update'],        # require 'yum-update' before installing
  ensure => installed,
}

# ensure mysql service is running
service { 'mysqld':
  ensure => running,
}

  file { '/var/www/html/info.php':
  ensure => file,
  content => '<?php  phpinfo(); ?>',    # phpinfo code
  require => Package['httpd'],        # require 'httpd' package before creating
  }
}

