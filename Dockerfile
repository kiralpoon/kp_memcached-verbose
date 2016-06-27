# Running sylvainlasnier's memcached Docker repository, in a more verbose mode
# It run the mamcached container with a custom flag

FROM sylvainlasnier/memcached:latest

CMD ["/usr/bin/memcached", "-u", "memcache", "-vv"]
