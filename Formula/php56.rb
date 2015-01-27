#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.5.tar.bz2/from/this/mirror"
  sha1 "a523a13110a66f020c36f088089d2c5c7de9f6a9"
  version "5.6.5"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end