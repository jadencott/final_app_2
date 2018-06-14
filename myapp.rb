require 'sinatra'


# set :public_folder, File.dirname(__FILE__) + '/static'

configure do
	set :public_folder, File.expand_path('/Users/apple/Desktop/new_app/public', __FILE__)
	set :views        , File.expand_path('/Users/apple/Desktop/new_app/views', __FILE__)
	set :root         , File.dirname(__FILE__)
end

get '/' do
  erb :index 
end 
get '/organize_meetup' do 
	erb :organize_meetup 
end

# get '/final_meeting' do 
# 	erb :organize_meetup 
# end

post '/final_meetup' do
	puts params 
 # "Your #{params[:language]} meeting will be on #{params[:date]}
 #     at #{params[:time]} at #{params[:address]}, #{params[:zipcode]}. Is that correct?"
 end 
