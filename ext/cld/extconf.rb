ENV['CFLAGS'] = ENV['CFLAGS'].to_s + ' -Wno-narrowing'
ENV['CXXFLAGS'] = ENV['CXXFLAGS'].to_s + ' -Wno-narrowing'

#require 'mkmf'
#create_makefile('cld/cld')

system "./configure --prefix=#{Dir.pwd}" unless File.exist?('Makefile')
