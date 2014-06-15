require 'sinatra'


def reverse(words)
  words.split(" ").map do |word|
    word.reverse
  end.join(" ")
end

QUOTES = ["It's life Jim, but not as we know it!",
          "Safety Dance!",
          "What is the airspeed velocity of a coconut laden swallow?"]
get '/' do
  @words = QUOTES.sample
  erb :home
end

post '/reverse' do
  puts params
  @words = reverse(params[:words])
  erb :home
end
