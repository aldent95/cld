ENV['CFLAGS'] = ENV['CFLAGS'].to_s + ' -Wno-narrowing'
ENV['CXXFLAGS'] = ENV['CXXFLAGS'].to_s + ' -Wno-narrowing'

require 'mkmf'


$defs.push("-DWIND32")
$defs.push("-DCLD_WINDOWS")
$defs.push("-DNDEBUG")
$defs.push("-D_LIB")

create_makefile('cld/cld')

system "./configure --prefix=#{Dir.pwd}" unless File.exist?('Makefile')
