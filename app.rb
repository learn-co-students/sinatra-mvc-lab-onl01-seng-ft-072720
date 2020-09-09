require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        piglatin = PigLatinizer.new
        @piglatinize = piglatin.piglatinize(params[:phrase])
        # "Hello world"
        erb :piglatinize
    end

    # get '/piglatinize' do
    #     erb :piglatinize
    # end

end