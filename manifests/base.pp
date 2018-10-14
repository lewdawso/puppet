node 'lewis-debian' {

    $username = "lewis"

    class { 'user':
        username => $username,
    }

    class { 'vim_go':
        username => $username,
    }

    include packages
}
