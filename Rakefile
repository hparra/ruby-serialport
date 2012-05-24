require 'rubygems'
require 'rake'

gem 'rake-compiler', '>= 0.4.1'
require "rake/extensiontask"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "serialport"
    gemspec.summary = "Library for using RS-232 serial ports."
    gemspec.description = "Ruby/SerialPort is a Ruby library that provides a class for using RS-232 serial ports."
    gemspec.email = "hector@hectorparra.com"
    gemspec.homepage = 'http://github.com/hparra/ruby-serialport/'
    gemspec.authors = ['Guillaume Pierronnet', 'Alan Stern', 'Daniel E. Shipton', 'Tobin Richard', 'Hector Parra', 'Ryan C. Payne']
    gemspec.has_rdoc = true
    gemspec.extensions << 'ext/native/extconf.rb'

    Rake::ExtensionTask.new "serialport", gemspec do |ext|
      ext.lib_dir = File.join(*['lib', ENV['FAT_DIR']].compact)
      ext.ext_dir = "ext/native"
    end
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler -s http://gemcutter.org"
end

task :clean do
  rm_rf(Dir['doc'], :verbose => true)
  rm_rf(Dir['pkg'], :verbose => true)
end

