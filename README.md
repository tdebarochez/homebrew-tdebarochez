homebrew-tdebarochez
===============

Homebrew formulae for my devel needs.

Installation
------------

1. Install [Homebrew]
2. Tap this repository ```brew tap tdebarochez/tdebarochez```
3. Install the needed 
  * The php-5.6 formula ```brew install tdebarochez/tdebarochez/php56```
  * The php-5.5 formula ```brew install tdebarochez/tdebarochez/php55```
  * The php-5.4 formula ```brew install tdebarochez/tdebarochez/php54```

Apache (OSX built-in)
---------------------

With the `<version>` (ie: `php55`) you choose to setup:

    $ sudo mv /usr/libexec/apache2/libphp5.so{,.original}
    $ sudo ln -s /usr/local/opt/<version>/libexec/apache2/libphp5.so /usr/libexec/apache2/libphp5.so
    $ sudo apachectl -k restart

Weirdly, I had an issue with libcurl :

    Cannot load libexec/apache2/libphp5.so into server: dlopen(/usr/libexec/apache2/libphp5.so, 10):
    Library not loaded: /usr/local/opt/curl/lib/libcurl.4.dylib\n  Referenced from:
    /usr/libexec/apache2/libphp5.so\n  Reason: Incompatible library version: libphp5.so requires version
    8.0.0 or later, but libcurl.4.dylib provides version 7.0.0

To fix it, I replaced the libcurl's OSX built-in library with the homebrew's version :

    $ sudo mv /usr/lib/libcurl.4.dylib{,.original}
    $ sudo ln -s /usr/local/opt/curl/lib/libcurl.4.dylib /usr/lib/libcurl.4.dylib

Configuration
-------------

Add your own configuration files to this directories :

    $ php --ini
    Configuration File (php.ini) Path: /usr/local/etc/php/<version>/
    Loaded Configuration File:         (none)
    Scan for additional .ini files in: /usr/local/etc/php/<version>/conf.d
    Additional .ini files parsed:      (none)
