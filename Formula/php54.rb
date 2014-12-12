#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php54 < AbstractPhp
  url "http://php.net/get/php-5.4.35.tar.bz2/from/this/mirror"
  sha1 "3f76d6b381a03b0be575cffa23eece30c43bc402"
  homepage "http://php.net"
  version "5.4.35"
  def php_version
    5.4
  end
  def php_version_path
    54
  end
end
