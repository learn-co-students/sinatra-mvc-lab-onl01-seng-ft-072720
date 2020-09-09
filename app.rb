require_relative 'config/environment'

class App < Sinatra::Base

    ##    GET '/'
    ## returns a 200 status code
    ## renders the instructions
    ## renders a new form element on the page
    ## renders the form directions on the page
    ## renders the input field for the phrase

    get '/' do
        erb :user_input
    end

    ##   POST '/piglatinize'
    ## returns a 200 status code
    ## displays the pig latinized phrase upon form submission
    ## POST '/piglatinize' again
    ## returns a 200 status code
    ## displays the pig latinized phrase upon form submission

    post '/piglatinize' do
        @text = params[:user_phrase]
        @piglatinizer = PigLatinizer.new
        erb :piglatinize
    end


end