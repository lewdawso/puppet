class vim_go ( String $username ){

    $install_dir = ".vim/bundle/vim-go"

    file { "/home/${username}/${install_dir}":
        ensure => 'directory',
    }

    puppetlabs-vcsrepo { $install_dir:
        provider => git,
        source => "https://github.com/fatih/vim-go",
        revision => "v1.18",
    }
} 
