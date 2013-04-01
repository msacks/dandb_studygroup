require 'webmachine'
require './my_resource'

MyApp = Webmachine::Application.new do |app|
	app.routes do
	add ['*'], MyResource
	end
end

MyApp.run
