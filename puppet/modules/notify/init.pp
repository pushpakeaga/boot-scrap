class notify {

exec {"mkdir":
    command => '/bin/mkdir -p /tmp/abc/def',
    #notify => Exec[chown],
}

exec{"chown":
    command => '/bin/chown -R puppet:puppet /tmp/abc',
    subscribe => Exec[mkdir],
}
}
