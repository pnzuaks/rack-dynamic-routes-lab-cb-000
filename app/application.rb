class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM_NAME>"
      item_name = req.params["item"]
      if @@items.contains?(item_name)
        resp.write "Item not found"
      else
      resp.write item_name.price

  end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
