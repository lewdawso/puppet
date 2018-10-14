class vim ( String $username ){

    $vim_dir = "/home/${username}/.vim";

    file { "${vim_dir}/bundle":
        ensure => directory,
        owner => $username,
    }

    contain vim::vim_go
}
