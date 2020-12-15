require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/say/:number/:phrase" do
  end

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
   end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number1 + @number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 - @number2}"
    elsif params[:operation] == "multiply"
      "#{@number1 * @number2}"
    elsif params[:operation] =="divide"
      "#{@number1 / @number2}"
    end
  end

   get "/square/:number" do
     @squared = params[:number].to_i * params[:number].to_i
     "#{@squared}"
  end


end
