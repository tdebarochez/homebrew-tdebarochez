#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  url "http://php.net/get/php-5.6.3.tar.bz2/from/this/mirror"
  sha1 "05cb83b781b5a1259ee7ba4eda4b6fa48a58ffec"
  homepage "http://php.net"
  version "5.6.3"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end