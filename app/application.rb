class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/item_name)
      item_name = req.params["item_name"]
      if @@items.include?(item_name)
            resp.write item_name.price
          else
          resp.write "Item not found"
      end
      # @@items.each do |item|
      #   resp.write item.price
      # end
    # elsif
    #   resp.write "Item not found"



  #   if req.path=="/items/<ITEM_NAME>"
  #     item_name = req.params["item"]
  #     if @@items.contains?(item_name)
  #       resp.write item_name.price
  #     else
  #     resp.write "Item not found"
  # end
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
