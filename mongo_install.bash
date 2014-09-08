# Install MongoDB
# The `apt-key` call registers the public key of the custom 10gen MongoDB aptitude repository
# A custom 10gen repository list file is created containing the location of the MongoDB binaries
# install MongoDB
# https://www.digitalocean.com/community/articles/how-to-install-mongodb-on-ubuntu-12-04
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
apt-get -y --force-yes update
apt-get -y --force-yes install mongodb-10gen

# Here's an explanation of each line in the script:

# The `apt-key` call registers the public key of the custom 10gen MongoDB aptitude repository
# A custom 10gen repository list file is created containing the location of the MongoDB binaries
# Aptitude is updated so that new packages can be registered locally on the Droplet
# Aptitude is told to install MongoDB
