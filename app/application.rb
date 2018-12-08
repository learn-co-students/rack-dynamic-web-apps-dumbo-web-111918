class Application

  def call(env)
    resp = Rack::Response.new

    #this is our code we put in to run
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    #outputs each to new line wiht \n
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      #use #write instead of puts
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end

end
