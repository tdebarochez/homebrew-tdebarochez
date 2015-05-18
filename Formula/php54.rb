#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php54 < AbstractPhp
  init
  url "http://php.net/get/php-5.4.41.tar.bz2/from/this/mirror"
  sha1 "5bc4b45a1280ff80a3cf5b8563716f325cfd0121d7fd25aa54d56ff38b3b8272"
  version "5.4.41"
  def php_version
    5.4
  end
  def php_version_path
    54
  end
end
