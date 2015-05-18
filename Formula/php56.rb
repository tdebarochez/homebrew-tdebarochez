#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.9.tar.bz2/from/this/mirror"
  sha256 "19d3b87b7b8bba3be24cf6d757d16b723a98881c3af8d15469fd25501e9abcb9"
  version "5.6.9"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end
