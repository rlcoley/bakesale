require "sinatra"


get "/" do

  erb :home
end

get "/cakes" do

  class Cake
    attr_accessor :name, :price, :url
    def initialize(name,price, url)
      @name = name
      @price = price
      @url = url
    end

  end

@cake1 = Cake.new('Chocolate cake', 10, "https://edgarsbakery.com/wp-content/uploads/2015/07/Prod-doubleChocoCake-510x600.jpg")

@cake2 = Cake.new('Strawberry Cake ', 10 , "https://edgarsbakery.com/wp-content/uploads/2015/07/products-cakes-Strawberry2.jpg")

@cake3 = Cake.new('Ava', 6, "https://edgarsbakery.com/wp-content/uploads/2015/07/Prod-avaCake-510x600.jpg")

  erb :cakes
end


get "/pies" do
  class Pie
    attr_accessor :name, :price, :url
    def initialize(name,price, url)
      @name = name
      @price = price
      @url = url
    end

  end

@pie1 = Pie.new('Coconut Cream', 12, "http://www.perkinsrestaurants.com/wp-content/uploads/2016/02/bakery_creamPies_coconut_detail.jpg")
@pie2 = Pie.new('Peanut Butter Silk ', 10, "http://www.perkinsrestaurants.com/wp-content/uploads/2017/05/peanutbutter-silk-pie-hero-no-nuts-388x245.jpg")
@pie3 = Pie.new('Banana Cream', 14, "http://www.perkinsrestaurants.com/wp-content/uploads/2016/02/bakery_creamPies_banana_detail.jpg")
   erb :pies
end


get "/cookies" do
  class Cookie
    attr_accessor :name, :price, :url
    def initialize(name,price, url)
      @name = name
      @price = price
      @url = url
    end

  end

@cookie1 = Cookie.new('Large Cookies', 8, "https://edgarsbakery.com/wp-content/uploads/2015/11/Prod-cookies-510x600.jpg")
@cookie2 = Cookie.new('Cookie Sandwich', 8, "https://edgarsbakery.com/wp-content/uploads/2015/12/prod-buttercreamcookies-510x600.jpg")
@cookie3 = Cookie.new('Thanksgiving', 6, "https://edgarsbakery.com/wp-content/uploads/2016/04/products-cookies-Turkey-510x600.jpg")

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
  @total = 20
  erb :cart
end
