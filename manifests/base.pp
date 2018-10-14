node 'lewis-debian' {

    $username = "lewis"

    class { 'user':
        username => $username,
    }

    class { 'vim':
        username => $username,
    }

    include packages
}
