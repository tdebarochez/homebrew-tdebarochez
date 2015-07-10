#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.10.tar.bz2/from/this/mirror"
  sha256 "0a579c81c724ea41815eee0caa8ea7d8eeb302458519d8cc4fc5b055577c8c45"
  version "5.6.10"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end
