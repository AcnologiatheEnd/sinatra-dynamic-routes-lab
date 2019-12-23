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
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @new_string = "#{params[word1]} + #{params[word2]} + #{params[word3]} + #{params[word4]} + #{params[word5]}"
  end
end