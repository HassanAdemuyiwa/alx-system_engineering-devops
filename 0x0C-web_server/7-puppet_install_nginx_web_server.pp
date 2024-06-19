# automating my working using Puppet

package { 'nginx':
	ensure => installed,
}

file_line { 'install':
	ensure => 'present',
	path	=> '/etc/nginx/sites-enabled/default',
	after	=> 'linten 80 default_server;',
	line 	=> 'rewrite ^/redirect_me https://www.github.com/hassanademuyiwa permanent;',
}

file { '/var/www/html/index.html':
	content => 'Hello World!',
}

service { 'nginx':
	ensure => running,
	require => Package['nginx'],
}
