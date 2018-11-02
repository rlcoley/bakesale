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

@cake1 = Cake.new('Chocolate cake', 10, "https://nichaliciousbaking.files.wordpress.com/2015/09/dsc07814.jpg")

@cake2 = Cake.new('Chocolate cake 2', 6, "https://nichaliciousbaking.files.wordpress.com/2015/09/dsc07814.jpg")

@cake3 = Cake.new('Chocolate cake 3', 6, "https://nichaliciousbaking.files.wordpress.com/2015/09/dsc07814.jpg")

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

@pie1 = Pie.new('Apple Pie1 ', 8, "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fimg1.southernliving.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2017%2F10%2Fmain%2Farkansas_black_apple_pie_with_caramel_sauce_2540501_pieso_675.jpg%3Fitok%3DiUlqw3oU&w=700&q=85")
@pie2 = Pie.new('Apple Pie2 ', 8, "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fimg1.southernliving.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2017%2F10%2Fmain%2Farkansas_black_apple_pie_with_caramel_sauce_2540501_pieso_675.jpg%3Fitok%3DiUlqw3oU&w=700&q=85")
@pie3 = Pie.new('Apple Pie3 ', 8, "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fimg1.southernliving.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2017%2F10%2Fmain%2Farkansas_black_apple_pie_with_caramel_sauce_2540501_pieso_675.jpg%3Fitok%3DiUlqw3oU&w=700&q=85")
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

@cookie1 = Cookie.new('Chocolate Chip1', 3, "https://images-gmi-pmc.edge-generalmills.com/e8198dd2-770b-4c7c-a748-ca7538cf48d0.jpg")
@cookie2 = Cookie.new('Chocolate Chip2', 3, "https://images-gmi-pmc.edge-generalmills.com/e8198dd2-770b-4c7c-a748-ca7538cf48d0.jpg")
@cookie3 = Cookie.new('Chocolate Chip3', 3, "https://images-gmi-pmc.edge-generalmills.com/e8198dd2-770b-4c7c-a748-ca7538cf48d0.jpg")

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
