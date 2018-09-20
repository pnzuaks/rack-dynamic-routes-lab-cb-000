class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM_NAME>"
      item_name = req.params["item"]
      binding.pry
      if @@items.contains?(item_name)
        resp.write item_name.price
      else
      resp.write "Item not found"


  end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
