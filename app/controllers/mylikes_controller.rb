class MylikesController < ApplicationController
  def index
    @likes = Like.all

    render("mylike_templates/index.html.erb")
  end
  
end