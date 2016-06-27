# Running kiral's ubuntu15 with memcached Docker repository, in a more verbose mode
# It run the mamcached container with a custom flag

FROM kiralpoon/ubuntu_15
MAINTAINER Kiral Poon <kiralpoon@gmail.com>

# Install packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install memcached

# memcached public variable

EXPOSE 11211

CMD ["/usr/bin/memcached", "-u", "memcache", "-vv"]
