class Application

  def slots
    game = {}
    game["num_1"] = Kernel.rand(1..20)
    game["num_2"] = Kernel.rand(1..20)
    game["num_3"] = Kernel.rand(1..20)
    
    comp = game["num_1"] == game["num_2"] && game["num_2"] == game["num_3"]
    
    if comp
      result = "You Win"
    else
      result = "You Lose"
    end
    
    game["result"] = result
    
    game
  end

  def call(env)
    resp = Rack::Response.new
    
    game = slots
    
    resp.write "#{game['num_1']}\n"
    resp.write "#{game['num_2']}\n"
    resp.write "#{game['num_3']}\n"
    
    resp.write game["result"]
    
    resp.finish
  end
end
