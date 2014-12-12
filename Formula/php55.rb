#encoding: utf-8
require File.expand_path("../../Abstract/abstract-php", __FILE__)

require 'formula'

class Php55 < AbstractPhp
  url "http://php.net/get/php-5.5.19.tar.bz2/from/this/mirror"
  sha1 "1d22f5ea0fbd4eb0d7df4618990dbbbdd47dd2de"
  homepage "http://php.net"
  version "5.5.19"
  def php_version
    5.5
  end
  def php_version_path
    55
  end
end