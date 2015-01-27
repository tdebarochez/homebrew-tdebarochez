#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php55 < AbstractPhp
  init
  url "http://php.net/get/php-5.5.21.tar.bz2/from/this/mirror"
  sha1 "a6251bb3565f144593df4329fd15bedd70ae13a8"
  version "5.5.21"
  def php_version
    5.5
  end
  def php_version_path
    55
  end
end