class WelcomeController < ApplicationController
  def index
  	dat1 = Time.new
  	dat1 = dat1.day.to_int % 31
  	noofquotes = Quote.count
  	dat1 = dat1 % noofquotes
  	dat = Time.new
  	dat = dat.day.to_int % 31
  	noofkural = Thirukural.count
  	dat = dat % noofkural

	@articles = Article.order(created_at: :desc).limit(6)
	@staffnews = Staffnews.order(created_at: :desc).limit(6)
	@staffnewscount = Staffnews.count
	@studentnewscount = Studentnews.count
	@studentnews = Studentnews.order(created_at: :desc).limit(6)
	@thirukural = Thirukural.offset(dat).limit(1)
	@quotes = Quote.offset(dat1).limit(1)
  end
end
