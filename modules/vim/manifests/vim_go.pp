class vim::vim_go {

    vcsrepo { "${vim::vim_dir}/bundle/vim-go":
        provider => git,
        source => "https://github.com/fatih/vim-go",
        revision => "v1.18",
        owner => $vim::username,
        group => $vim::username,
    }
}
