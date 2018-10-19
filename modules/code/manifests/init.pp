# clone source code repos to $HOME/code directory

class code (String $username) {

    $code_dir = "/home/${username}/code"

    file { $code_dir:
        ensure => directory,
        owner => $username,
    }

    # scripts
    vcsrepo { "${code_dir}/scripts":
        provider => git,
        source => "https://github.com/lewdawso/scripts",
        revision => "master",
        owner => $vim::username,
        group => $vim::username,
    }

    # dotfiles
    vcsrepo { "${code_dir}/dotfiles":
        provider => git,
        source => "https://github.com/lewdawso/dotfiles",
        revision => "master",
        owner => $vim::username,
        group => $vim::username,
    }
}
