class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      # req.path=="/items/<ITEM NAME>"
      # search_term = req.params["<ITEM NAME>"]
      if @@items.empty?
        resp.write "Item not found"
      else
      @@items.each do |item|
      resp.write item.price
    end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
