#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php55 < AbstractPhp
  init
  url "http://php.net/get/php-5.5.23.tar.bz2/from/this/mirror"
  sha1 "a206cc931bd3aec946a7e5f82b28552d4a93c3cb"
  version "5.5.23"
  def php_version
    5.5
  end
  def php_version_path
    55
  end
end
