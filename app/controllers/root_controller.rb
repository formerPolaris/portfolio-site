class RootController < ApplicationController
  def index
    @main_page = true
    render "home"
  end
end
