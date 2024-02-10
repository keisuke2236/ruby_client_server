require 'webrick'

server_settings = { 
  :DocumentRoot => './',
  :BindAddress => '127.0.0.1',
  :Port => 4000
}

server = WEBrick::HTTPServer.new(server_settings)
server.mount('/', WEBrick::HTTPServlet::FileHandler, 'index.html')
trap("INT"){ server.shutdown }
server.start
