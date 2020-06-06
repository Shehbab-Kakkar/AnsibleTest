Using site.pp
server# cd /etc/puppet/environments/production/
production# vim site.pp
node default {
  notify {"This is the default node":}
}

production# ls
environment.conf  manifests modules site.pp

# mv site.pp manifests/

node2 # puppet agent -t

-------
# site.pp
node default {
  notify {"This is the default node":}
}
node 'node1.example.com', 'node2.example.com' {
  notify {"This is the multi node defination":}
}
--------
#vim site.pp
node /^node/ {
  notify {"THis is using regex":}
}
#puppet agent -t


