#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.6.tar.bz2/from/this/mirror"
  sha1 "6795db456f66193634ff38cf8039636b168eda3c"
  version "5.6.6"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end
