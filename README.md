# kp_memcached-verbose


Memcached 1.4.14 Docker image
=============================

Description
-----------

This is a Memcached 1.4.14 docker images based on Ubuntu 15.10. It is small and basic.
This is a running commend verbose that used for my own learning purposes

Its features is to delivered memcached service.  
You will be able to choose the memcache size, by default 64Mo, the max connection number, by default 1024 and the bind address ip, by default 0.0.0.0.  
Its display WARNING and ERROR verbose on stdout. Useful for external monitoring.

So, this image respects pragmatic simple vision of Docker.  
If you are looking for a complete VM, just use LXC.  
**LXC** is an amazing product to get fast **full VM** where **Docker** is amazing to get only **one service by VM**.

This README ref Sylvain Lasnier memcached README.md

Usage
-----

Simple use of memcached docker image:

    $ docker run -d -P --name memcached kiralpoon/kp_memcached-verbose 
	2bc969da4ecbb32475cf111d2cd21705a9eff10c334d1f29be73bcbf09fc0a29
	CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                      NAMES
2bc969da4ecb        kiralpoon/memcached   "/usr/bin/memcached -"   42 minutes ago      Up 42 minutes       0.0.0.0:32770->11211/tcp   memcached

Test it:
	$ IPADDR=$(docker inspect -f {{.NetworkSettings.IPAddress}} 2bc96) 
	$ echo "$IPADDR"
	$ nc "IPADDR" 11211

	or

	$ nc "$(docker inspect -f {{.NetworkSettings.IPAddress}} 2bc96)" 11211
	stats
	STAT pid 1
	STAT uptime 1453
	STAT time 1467052336
	STAT version 1.4.24 Ubuntu
	STAT libevent 2.0.21-stable
	STAT pointer_size 64
	STAT rusage_user 0.088000
	STAT rusage_system 0.020000
	STAT curr_connections 10
	STAT total_connections 14
	STAT connection_structures 11
	STAT reserved_fds 20
	STAT cmd_get 0
	STAT cmd_set 0
	STAT cmd_flush 0
	STAT cmd_touch 0
	STAT get_hits 0
	STAT get_misses 0
	STAT delete_misses 0
	STAT delete_hits 0
	STAT incr_misses 0
	STAT incr_hits 0
	STAT decr_misses 0
	STAT decr_hits 0
	STAT cas_misses 0
	STAT cas_hits 0
	STAT cas_badval 0
	STAT touch_hits 0
	STAT touch_misses 0
	STAT auth_cmds 0
	STAT auth_errors 0
	STAT bytes_read 7
	STAT bytes_written 7
	STAT limit_maxbytes 67108864
	STAT accepting_conns 1
	STAT listen_disabled_num 0
	STAT threads 4
	STAT conn_yields 0
	STAT hash_power_level 16
	STAT hash_bytes 524288
	STAT hash_is_expanding 0
	STAT malloc_fails 0
	STAT bytes 0
	STAT curr_items 0
	STAT total_items 0
	STAT expired_unfetched 0
	STAT evicted_unfetched 0
	STAT evictions 0
	STAT reclaimed 0
	STAT crawler_reclaimed 0
	STAT crawler_items_checked 0
	STAT lrutail_reflocked 0
	END






