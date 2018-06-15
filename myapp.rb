require 'sinatra'


# set :public_folder, File.dirname(__FILE__) + '/static'

configure do
	set :public_folder, File.expand_path('/Users/apple/Desktop/final_app_2/public', __FILE__)
	set :views        , File.expand_path('/Users/apple/Desktop/final_app_2/views', __FILE__)
 #    set :public_folder, File.expand_path('C:\Users\jcott\Desktop\final_app_2\public', __FILE__)
	# set :views        , File.expand_path('C:\Users\jcott\Desktop\final_app_2\views', __FILE__)
	set :root         , File.dirname(__FILE__)
end

get '/' do
  erb :index 
end 
get '/organize_meetup' do 
	erb :organize_meetup 
end

get '/final_meetup' do 
	erb :final_meetup
end

post '/final_meetup' do
	puts params
end 
