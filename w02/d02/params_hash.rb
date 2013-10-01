require 'sinatra'
require 'sinatra/reloader' if development?

get '/:username' do
  # path /kathy.zhou.311
  # { :username => "kathy.zhou.311" }
  p params
  params.to_s
end

get '/:username/friends_mutual' do
  # path /kathy.zhou.311/friends_mutual
  # { :username => "kathy.zhou.311" }
  p params
  params.to_s
end

get '/:username/picture' do
	# path /kathy.zhou.311/picture
	# { :username => "kathy.zhou.311" }
	#
	# path /kathy.zhou.311/picture?type=large
	# { :username => "kathy.zhou.311", :type => "large" }
	#
	# path /kathy.zhou.311/picture?type=small
	# { :username => "kathy.zhou.311", :type => "small" }
	p params
	params.to_s
end

get '/projects/:username/:project_name' do
  # path /projects/machinewerks/cs-x51-usb-midi-control-surface
  # { :username => "machinewerks", :project_name => "cs-x51-usb-midi-control-surface" }
  p params
  params.to_s
end

