require 'mkmf'

printf("checking for OS... ")
STDOUT.flush
os = /-([a-z]+)/.match(RUBY_PLATFORM)[1]
puts(os)

$CFLAGS += " -DOS_#{os.upcase}"
$CFLAGS += " -DRUBY_1_9" if RUBY_VERSION =~ /^1\.9/

if RUBY_PLATFORM.downcase.include?("darwin")
  with_ldflags($LDFLAGS + ' -framework Foundation -framework IOKit') {true}
else
  with_ldflags($LIBS + ' -lCoreFoundation -lIOKit') {true}
end

if !(os == 'mswin' or os == 'bccwin' or os == 'mingw')
  exit(1) if not have_header("termios.h") or not have_header("unistd.h")
end

create_makefile('serialport')
