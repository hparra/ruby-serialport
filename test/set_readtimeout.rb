#!/usr/bin/ruby
require "rubygems"
require "serialport"

sp = SerialPort.new(SerialPort.listDevices.first["port"], "38400".to_i)
sp.read_timeout = 100
sp.close
