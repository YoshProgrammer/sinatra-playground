require 'sinatra'


QUOTES = ["It's life Jim, but not as we know it!",
          "Safety Dance!"]
get '/' do
  QUOTES.sample
end
