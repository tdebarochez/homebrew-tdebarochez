#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.7.tar.bz2/from/this/mirror"
  sha1 "36a51c7ad98a6ed210673c2e655ba501f0a2f7ed"
  version "5.6.7"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end
