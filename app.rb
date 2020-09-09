require 'sinatra/base'

class App < Sinatra::Base

    get '/' do
        "Welcome, bitches!"
    end

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
        @name = capitalize_all(params[:name])
        @coach = capitalize_all(params[:coach])
        @pg = capitalize_all(params[:pg])
        @sg = capitalize_all(params[:sg])
        @sf = capitalize_all(params[:sf])
        @pf = capitalize_all(params[:pf])
        @c = capitalize_all(params[:c])
        erb :team
    end

    def capitalize_all(string)
        string.split(" ").map{|word| word.capitalize}.join(" ")
    end


end
