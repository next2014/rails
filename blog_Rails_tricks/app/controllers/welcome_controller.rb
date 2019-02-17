class WelcomeController < ApplicationController
  def index
    @issues  = Issue.all.reverse
  end
end
