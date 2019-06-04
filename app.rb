require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
class App < Sinatra::Base
  
  get '/' do 
    erb :user_input.erb 
  end
  
  post '/piglatinize' do 
    p = Piglatinize.new 
    @piglatin = p.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
  
end