# -*- encoding: utf-8 -*-
require File.expand_path('../lib/serialport/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "serialport"
  s.version = SerialPort::VERSION
  s.authors = ["Guillaume Pierronnet", "Alan Stern", "Daniel E. Shipton", "Tobin Richard", "Hector Parra", "Ryan C. Payne"]
  s.summary = "Library for using RS-232 serial ports."
  s.description = "Ruby/SerialPort is a Ruby library that provides a class for using RS-232 serial ports."
  s.email = "hector@hectorparra.com"
  s.homepage = "http://github.com/hparra/ruby-serialport/"
  s.require_paths = ["lib"]

  s.extensions = ["ext/native/extconf.rb", "ext/native/extconf.rb"]
  s.files         = `git ls-files`.split($\)
  s.extra_rdoc_files = [
    "LICENSE",
    "README"
  ]

  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }

  s.add_runtime_dependency(%q<serialport>, [">= 0"])
  s.add_development_dependency(%q<rake>, [">= 0"])
  s.add_development_dependency(%q<rake-compiler>, [">= 0.4.1"])
  s.add_development_dependency(%q<rake>, [">= 0"])
  s.add_development_dependency(%q<rake-compiler>, [">= 0.4.1"])
  s.add_development_dependency(%q<jeweler>, [">= 0"])
end

