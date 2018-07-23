archive=go1.10.3.linux-amd64.tar.gz
bash_profile=/home/vagrant/.bash_profile
destination=/usr/local

wget -nv https://dl.google.com/go/$archive

tar -C $destination -xzf $archive

rm $archive

echo 'export PATH=$PATH:'"$destination/go/bin" >> $bash_profile

echo 'alias rebuild='"'"' \
    sudo kill $(ps -fade | grep setlist-api | grep -v grep | awk '"'"'"'"'"'"'"'"'{print $2}'"'"'"'"'"'"'"'"'); \
    go build github.com/codestothestars/setlist-api; \
    sudo setsid ./setlist-api >/dev/null 2>&1 < /dev/null & \
'"'" >> $bash_profile
