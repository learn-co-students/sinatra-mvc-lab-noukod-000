require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinize = PigLatinizer.new
    @latinized_word = "#{piglatinize.piglatinize(params[:user_phrase])}"

    erb :latinized
  end
end