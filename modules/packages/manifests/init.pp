include apt

class packages {
	package { 'vim':
		ensure => 'present',
	}

	package { 'git':
		ensure => 'present',
	}

	package { 'curl':
		ensure => 'present',
	}
}
