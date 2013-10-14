require 'sinatra'
require 'sinatra/reloader'
require 'haml'

get '/' do
  @words = File.readlines("strategies.txt").sample
	haml :index
end

__END__

@@ layout
%html
	%head
		%link{:rel => :stylesheet, :type=> :"text/css", :href => "/my.css"}

	%body
		= yield

@@ index
%div.title
	=@words
