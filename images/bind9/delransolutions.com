$TTL    604800
@       IN      SOA     ns1.delransolutions.com. admin.delransolutions.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

; Name servers
@       IN      NS      ns1.delransolutions.com.

; A records
ns1     IN      A       72.31.1.100
@ 	    IN      A       72.31.1.100
www     IN      A       72.31.1.100

;CNAME records
secure	IN		CNAME	www.delransolutions.com.
;secure	IN		CNAME	ec2-54-149-36-198.us-west-2.compute.amazonaws.com.
