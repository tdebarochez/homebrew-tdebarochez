#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php54 < AbstractPhp
  init
  url "http://php.net/get/php-5.4.37.tar.bz2/from/this/mirror"
  sha1 "608e00a730e9674e1a2e2627175e7a27f4add18f"
  version "5.4.37"
  def php_version
    5.4
  end
  def php_version_path
    54
  end
end
