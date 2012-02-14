#!/usr/bin/env ruby

require "java"
Dir["build/macosx/*.jar", "build/jar/*.jar", "build/shared/lib/*.jar"].each do |lib|
  require lib
end
java_import "replicatorg.app.Base"

unless ARGV[0]
  $stderr.puts "Please specify an s3g file that is on the SD card."
  $stderr.puts "$ duplicatorg [object.s3g]"
  exit 1
end

machine_name   = Base.preferences.get("machine.name", nil)
serial_port    = Base.preferences.get("serial.last_selected", nil)
machine_loader = Base.machine_loader

machine_interface = machine_loader.get_machine_interface(machine_name);
machine_loader.connect(serial_port)

machine_interface.build_remote(ARGV[0])
sleep 5
exit 0
