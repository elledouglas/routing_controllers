class PagesController < ApplicationController
before_action :set_kitten_url, only: [:kitten, :kittens]
def welcome

render :about

end

def about
  @header = "This is the WELCOME header"
  render :about
end

def contest
 flash[:notice] = "Sorry, the contest has ended"
 redirect_to "/welcome"
end

def kitten

end

def kittens
end


def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def secrets
if params[:magic_word] == "wild"
  redirect_to gurjant_path(100)
puts "Welcoe to the dungeon"
else
  flash[:alert] = "Sorry, you're not authorized to see that page!"
  redirect_to "/welcome"
end
end


end
