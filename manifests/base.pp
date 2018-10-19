node 'lewis-debian' {

    $username = "lewis"

    class { 'user':
        username => $username,
    }

    class { 'vim':
        username => $username,
    }

    class { 'code':
        username => $username,
    }

    include packages
}
