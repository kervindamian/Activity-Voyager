class Voyager_Activity{

  account { 'monitor':
     home_dir => '/home/monitor',
     groups   => [ 'sudo', 'users' ],
     password => 'password.123!'
  }

  file { '/home/monitor/scripts/':
    ensure => 'directory',
	}

  file { '/home/monitor/src/':
    ensure => 'directory',
	}

  file { '/Activity-Voyager/memory_check.sh':
    ensure => 'link',
    target => '/etc/motd',
	}

  cron { 'memory_check':
    command => '/Activity-Voyager/memory_check.sh',
    user    => 'root',
    hour    => 0,
    minute  => 10,
	}

}
