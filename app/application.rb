class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM NAME>"
      # search_term = req.params["<ITEM NAME>"]
      resp.write "Hola"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
