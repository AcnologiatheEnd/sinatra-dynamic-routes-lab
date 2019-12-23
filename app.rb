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
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2'
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    case @operation
      when "subtract"
        (@number1 - @number2).to_s
      when "add"
        (@number1 + @number2).to_s
      when "multiply"
        (@number1 * @number2).to_s
      when "divide"
        (@number1 / @number2).to_s
    end
  end
end