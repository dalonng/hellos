#/usr/bin/env ruby

require 'socket'

server = TCPServer.open(2000)

loop {
  clinet = server.accept
  clinet.puts(Time.new.ctime)
  clinet.puts "Closing the connection. Bye!"
  clinet.close
}
