class sudo {
   notify{"class sudo.......": }
   file { "/etc/puppet/puppet.conf.sample":
        owner => 'root',
        group =>  'root',
        mode  =>  '0644',
        }
}

