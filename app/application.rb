class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/<ITEM NAME>)
      item_name = req.params[<ITEM NAME>]
      if @@items.contains?(item_name)
        resp.write "Item not found"
      else
      @@items.each do |item|
      resp.write item_name.price
    end

  end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
