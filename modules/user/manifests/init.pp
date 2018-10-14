class user (String $username ) {
	user { $username:
		ensure => 'present',
        home => "/home/${username}",
        shell => '/bin/bash',
        groups => 'sudo',
	}
}
