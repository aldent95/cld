ENV['CFLAGS'] = ENV['CFLAGS'].to_s + ' -Wno-narrowing'
ENV['CXXFLAGS'] = ENV['CXXFLAGS'].to_s + ' -Wno-narrowing'

require 'mkmf'
create_makefile('cld/cld')

$defs.push("-DWIND32")
$defs.push("-DCLD_WINDOWS")
$defs.push("-DNDEBUG")
$defs.push("-D_LIB")

system "./configure --prefix=#{Dir.pwd}" unless File.exist?('Makefile')
