#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php54 < AbstractPhp
  init
  url "http://php.net/get/php-5.4.43.tar.bz2/from/this/mirror"
  sha256 "25d7724fb00ad1b520f5bad2173717031153d0a8e3de2c75e7a084c76f8ecd6b"
  version "5.4.43"
  def php_version
    5.4
  end
  def php_version_path
    54
  end
end
