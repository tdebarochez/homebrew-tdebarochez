#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php56 < AbstractPhp
  init
  url "http://php.net/get/php-5.6.13.tar.bz2/from/this/mirror"
  sha256 "6358837c9cbab41b91ede59dbf0670ae0fb925a1369ecbc1a44a27212420f893"
  version "5.6.13"
  def php_version
    5.6
  end
  def php_version_path
    56
  end
end
