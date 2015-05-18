#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php55 < AbstractPhp
  init
  url "http://php.net/get/php-5.5.25.tar.bz2/from/this/mirror"
  sha256 "68df37e725ddd05675c0df906041038127938ecc52113a54d10e1e4029262c63"
  version "5.5.25"
  def php_version
    5.5
  end
  def php_version_path
    55
  end
end
