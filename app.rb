require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:names)
  end

  run! if app_file == $0
end
