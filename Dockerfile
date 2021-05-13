FROM centos:7
RUN yum install -y \
	make \
	automake \
	libmpc \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw-binutils-generic-2.25-1.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw-filesystem-base-101-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-binutils-2.25-1.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-boost-1.54.0-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-boost-static-1.54.0-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-bzip2-1.0.6-3.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-bzip2-static-1.0.6-3.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-cpp-4.9.3-1.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-crt-4.0.4-3.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-filesystem-101-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-gcc-4.9.3-1.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-gcc-c++-4.9.3-1.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-headers-4.0.4-5.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-libidn-1.33-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-libidn-static-1.33-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-libssh2-1.4.3-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-libssh2-static-1.4.3-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-openssl-1.0.2h-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-openssl-static-1.0.2h-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-pkg-config-0.28-2.el7.x86_64.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-win-iconv-0.0.6-4.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-win-iconv-static-0.0.6-4.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-winpthreads-4.0.4-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-winpthreads-static-4.0.4-1.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-zlib-1.2.8-2.el7.noarch.rpm \
	ftp://ftp.pbone.net/mirror/archive.fedoraproject.org/epel/7.2019-05-29/x86_64/Packages/m/mingw64-zlib-static-1.2.8-2.el7.noarch.rpm \
	&& rm -rf /var/tmp/*
WORKDIR /tmp
RUN curl -O https://curl.se/download/curl-7.70.0.tar.gz \
	&& tar zxf curl-7.70.0.tar.gz \
	&& cd /tmp/curl-7.70.0 \
	&& AR=x86_64-w64-mingw32-ar AS=x86_64-w64-mingw32-as LD=x86_64-w64-mingw32-ld RANLIB=x86_64-w64-mingw32-ranlib CC=x86_64-w64-mingw32-gcc NM=x86_64-w64-mingw32-nm ./configure --host=x86_64-unknown-windows --prefix=/usr/x86_64-w64-mingw32 --enable-ipv6 --disable-ldap --disable-pthreads \
	&& make \
	&& make install \
	&& rm -rf /tmp/*
WORKDIR /
COPY build-pandora-agent.sh /bin/
LABEL org.label-schema.name="pandora-winagent-cross-compile" \
	org.label-schema.description="cross compiling environment for Pandora FMS Windows agent" \
	org.label-schema.vendor="junichi.org" \
	org.label-schema.build-date="20210513"
CMD ["/bin/build-pandora-agent.sh"]
