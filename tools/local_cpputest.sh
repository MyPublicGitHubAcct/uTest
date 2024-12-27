# local_cpputest
# build in /opt/cpputest/

# required software
# brew install automake
# brew install autoconf
# brew install libtool

mkdir /opt/cpputest
cd /opt/cpputest

git clone --depth 1 --branch v4.0 https://github.com/cpputest/cpputest.git .
cd cpputest_build
autoupdate
autoreconf .. -i
../configure
make
