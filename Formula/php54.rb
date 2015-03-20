#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php54 < AbstractPhp
  init
  url "http://php.net/get/php-5.4.39.tar.bz2/from/this/mirror"
  sha1 "b7ae0472a9a6fdd6b1e502650c971717b77d4f84"
  version "5.4.39"
  def php_version
    5.4
  end
  def php_version_path
    54
  end
end
