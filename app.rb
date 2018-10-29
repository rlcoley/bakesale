require "sinatra"


get "/" do

  erb :home
end


get "/cakes" do

  erb :cakes
end


get "/pies" do

   erb :pies
end


get "/cookies" do
  class Cookie
    attr_accessor :name, :price, :url, :description
    def initialize(name,price,description, url)
      @name = name
      @price = price
      @description = description
      @url = url
    end

  end

@c1 = Cookie.new('Chocolate Chip',6,"Chocolate Chip, its a classic", "https://images-gmi-pmc.edge-generalmills.com/e8198dd2-770b-4c7c-a748-ca7538cf48d0.jpg")



  erb :cookies
end
