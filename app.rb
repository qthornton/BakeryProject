require 'sinatra'
require 'byebug'
require 'mailgun'

require './cookie'
require './cake'
require './muffin'

get '/' do 
	erb :index
end

get '/about-us' do 
	erb :about_us
end

get '/contact-us' do 
	erb :contact_us
end

get '/dessert/all' do

	erb :desserts
end

get '/dessert/cookies' do 
	# co1 = Cookie.new('name', 'price', 'description', 'main_ingredients','img src')
	# co2 = Cookie.new('name', 'price', 'description', 'main_ingredients','img src')
	# @cookies = [co1,co2]
	erb :cookies
end

get '/dessert/muffins' do 
	# m1 = Muffin.new('name', 'price', 'description', 'main_ingredients','img src')
	# m2 = Muffin.new('name', 'price', 'description', 'main_ingredients','img src')
	# @muffins = [m1,m2]
	erb :muffins
end

get '/dessert/cakes' do 
	ck1 = Cake.new('Chocolate Cake', '12.00', 'Deep Chocolate that melts in your mouth', 'Cocoa, Frosting')
	ck2 = Cake.new('Strawberry Shortcake', '8.00', 'Strawberry Goodness', 'Strawberries, Vanilla')
	@cakes = [ck1,ck2]
	erb :cakes
end

