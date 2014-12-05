#encoding: utf-8

# brew --config
# /usr/local/Library/Formula

# to test
# brew install --verbose --debug php
# cd `brew --repository`

require 'formula'

class Php < Formula

  url "http://php.net/get/php-5.6.3.tar.bz2/from/this/mirror"
  sha1 "05cb83b781b5a1259ee7ba4eda4b6fa48a58ffec"
#  md5 "b6278e4fb74bae260a2ef2d8a430c8fc"
  homepage "http://php.net"
  version "5.6.3"

  # So PHP extensions don't report missing symbols
  skip_clean 'bin', 'sbin'
  
#  depends_on 'autoconf' => :build
#  depends_on 'automake' => :build
#  depends_on 're2c' => :build
#  depends_on 'flex' => :build
#  depends_on 'homebrew/versions/bison27' => :build
  depends_on 'curl'
  depends_on 'freetype'
  depends_on 'gettext'
  depends_on 'jpeg'
  depends_on 'libpng'
#  depends_on 'homebrew/dupes/tidy'
#  depends_on 'homebrew/dupes/zlib'
  depends_on 'libtool'
  depends_on 'mysql'

  depends_on 'zlib'
  depends_on 'tidy'

#  def php_version
#    5.6.3
#  end
  
#  def config_path
#    etc+"php/"+php_version.to_s
#  end

  def install

    args = ["--prefix=#{prefix}",
            "--localstatedir=#{var}",
#            "--sysconfdir=#{config_path}",
            "--libexecdir=#{libexec}",
            "--mandir=#{man}",
            "--disable-cgi",
            "--disable-debug",
            "--enable-bcmath",
            "--enable-calendar",
            "--enable-exif",
            "--enable-ftp",
            "--enable-gd-native-ttf",
            "--enable-intl",
            "--enable-mbregex",
            "--enable-mbstring",
            "--enable-pcntl",
            "--enable-shmop",
            "--enable-soap",
            "--enable-soap",
            "--enable-sockets",
            "--enable-sysvmsg",
            "--enable-sysvsem",
            "--enable-sysvshm",
            "--enable-wddx",
            "--enable-zip",
            "--with-apxs2=/usr/sbin/apxs",
            "--with-bz2=/usr",
#            "--with-config-file-path=#{config_path}",
#            "--with-config-file-scan-dir=#{config_path}/conf.d",
            "--with-curl",
            "--with-freetype-dir=#{Formula['freetype'].opt_prefix}",
            "--with-gd",
            "--with-gettext=#{Formula['gettext'].opt_prefix}",
            "--with-iconv-dir=/usr",
            "--with-icu-dir=#{Formula['icu4c'].opt_prefix}",
            "--with-jpeg-dir=#{Formula['jpeg'].opt_prefix}",
            "--with-kerberos=/usr",
            "--with-libedit",
            "--with-mhash",
            "--with-mysql-sock=/tmp/mysql.sock",
            "--with-mysql=mysqlnd",
            "--with-mysqli=mysqlnd",
            "--with-openssl",
            "--with-pdo-mysql=mysqlnd",
            "--with-png-dir=#{Formula['libpng'].opt_prefix}",
            "--with-readline",
            "--with-tidy=#{Formula['tidy'].opt_prefix}",
            "--with-xmlrpc",
            "--with-zlib=#{Formula['zlib'].opt_prefix}",

           ]

#    system "./buildconf" if build.head?
    system "./configure", *args
    
    inreplace 'Makefile' do |s|
      s.change_make_var! "EXTRA_LIBS", "\\1 -lstdc++"
    end
    
    system "make"
#    ENV.deparallelize # parallel install fails on some systems
    system "make install"

#    config_path.install default_config => "php.ini" unless File.exist? config_path+"php.ini"

    chmod_R 0775, lib+"php"

#    system bin+"pear", "config-set", "php_ini", config_path+"php.ini"

  end

end
