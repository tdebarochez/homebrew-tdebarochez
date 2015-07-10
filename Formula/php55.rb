#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php55 < AbstractPhp
  init
  url "http://php.net/get/php-5.5.26.tar.bz2/from/this/mirror"
  sha256 "816afffdb03ff4c542bc172a2f77f9c69b817df82d60cce05c1b4f578c2c926e"
  version "5.5.26"
  def php_version
    5.5
  end
  def php_version_path
    55
  end
end
