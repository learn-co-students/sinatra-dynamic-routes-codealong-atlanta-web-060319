require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @person_name = params[:name]
    "Goodbye, #{@person_name}."
  end

  get '/multiply/:num1/:num2' do
    @one = params[:num1].to_i
    @two = params[:num2].to_i

    product = @one * @two
    product.to_s
  end
end
