# Set locale
apt-get clean && apt-get update && apt-get install -y software-properties-common locales language-pack-en

locale-gen en_US.UTF-8

echo "LANGUAGE=en_US.UTF-8" >> /etc/default/locale
echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
echo "LC_CTYPE=UTF-8" >> /etc/default/locale

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Install nodejs
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get install -y nodejs
npm install --no-optional -g yarn parcel-bundler gulp-cli @angular/cli

# Clean up
apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
