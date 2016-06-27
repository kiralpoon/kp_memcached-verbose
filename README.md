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
	
Test it:


Please replace container ID in nc command line with your ;)


