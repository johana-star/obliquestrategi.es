require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @words = File.readlines("strategies.txt").sample
	@words = make_it_sultry(@words)
	haml :index
end

def make_it_sultry(words)
	words = words.split(" ")
	words.insert(rand*words.length, "<sub>")
	words.join(" ")
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
