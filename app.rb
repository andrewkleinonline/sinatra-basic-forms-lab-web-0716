require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    name = params["name"]
    age = params["age"]
    breed = params["breed"]
    @new_puppy = Puppy.new(name, breed, age)
    erb :display_puppy
  end
end
