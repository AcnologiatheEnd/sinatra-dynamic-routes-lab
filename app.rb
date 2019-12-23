require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
   new_name = params[:name].reverse
    "#{new_name}"
  end
  
  get '/square/:number' do
    new_num = (params[:number].to_i ** 2).to_s
    "#{new_num}"
  end
  
  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end
  
  get 'say/:word/'
end