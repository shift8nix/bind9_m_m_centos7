$TTL 10m;
$ORIGIN example.com.;
@		IN		SOA	ns1.example.com. hostmaster.example.com. (
				00000001 ; sn = serial number
				1h ; refresh
				5m ; retry = refresh retry
				4w ; expiry
				2h ; nx = nxdomain ttl
				);
@		1h	IN		NS	ns1.example.com.
@		1h	IN		NS	ns2.example.com.
@		10m	IN		MX 10	mail.example.com.


ns1			IN		A	{{ ns1_ip }}
ns2			IN		A	{{ ns2_ip }}
@			IN		A	127.0.0.1
