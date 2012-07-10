require "bundler/gem_tasks"
require "rake/extensiontask"

Rake::ExtensionTask.new "serialport" do |ext|
  ext.lib_dir = File.join(*['lib', ENV['FAT_DIR']].compact)
  ext.ext_dir = "ext/native"
end

task :clean do
  rm_rf(Dir['doc'], :verbose => true)
  rm_rf(Dir['pkg'], :verbose => true)
end

