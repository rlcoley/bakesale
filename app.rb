require "sinatra"


get "/" do

  erb :home
end


get "/cakes" do

  class Cake
    attr_accessor :name, :price, :url, :description
    def initialize(name,price,description, url)
      @name = name
      @price = price
      @description = description
      @url = url
    end

  end

@cake1 = Cake.new('Chocolate cake',6," Can't go wrong with Chocolate Cake", "https://nichaliciousbaking.files.wordpress.com/2015/09/dsc07814.jpg")

  erb :cakes
end


get "/pies" do
  class Pie
    attr_accessor :name, :price, :url, :description
    def initialize(name,price,description, url)
      @name = name
      @price = price
      @description = description
      @url = url
    end

  end

@pie1 = Pie.new('Apple Pie ',6,"Issa Pie", "http://www.pastrycraftseattle.com/blog/wp-content/uploads/2010/11/Pie.jpg")
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

@cookie1 = Cookie.new('Chocolate Chip',6,"Chocolate Chip, its a classic", "https://images-gmi-pmc.edge-generalmills.com/e8198dd2-770b-4c7c-a748-ca7538cf48d0.jpg")

  erb :cookies
end

cookieNum = 0
get '/test' do

# add a cookie cart
cookieNum += 1
p cookieNum
  if cookieNum == 1
    p "You have  #{cookieNum} cookie total"
  else
    p "You have #{cookieNum} cookies total"
  end

end

# add a cake to cart
cakeNum = 0
get '/buycake' do
  cakeNum += 1
  p "You have #{cakeNum} cake total"
end


# add a pie to cart
pieNum = 0
get '/buypie' do
  pieNum += 1
  p "You have #{pieNum} pie total"
end

get "/cart" do
  @pie = pieNum
  @cake = cakeNum
  @cookie = cookieNum
  erb :cart
end
