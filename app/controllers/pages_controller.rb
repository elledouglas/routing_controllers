class PagesController < ApplicationController
def welcome

render :about

end

def about
  @header = "This is the WELCOME page"
  render :about
end

def contest
  @header = "This is the CONTEST page"
  render :contest
end
end
