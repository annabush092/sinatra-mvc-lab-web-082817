require_relative 'config/environment'

class App < Sinatra::Base

  get ("/") do
    erb :index
  end

  post ("/piglatinize") do
    @pig = PigLatinizer.new.to_pig_latin(params["user_phrase"])
    erb :piglatinize
  end
end
