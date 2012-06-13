require 'rubygems'
require 'gmail'
require 'sinatra'
require 'gchart'
require 'Haml'
require './lib/mail.rb'


#puts gmail.inbox.count
#puts gmail.inbox.count(:unread)
#puts gmail.inbox.count(:read)

get '/' do
  mymail = MyMail.new
	@inboxStatus = mymail.eval()
	@chart = Gchart.line(:size => '200x300', 
            :title => "example title",
            :bg => 'efefef',
            :legend => ['first data set label', 'second data set label'],
            :data => [10, 30, 120, 45, 72])
        haml :index
end

get '/about' do
	haml :about
end
