class User::IdeasController < ApplicationController

  def new
    @idea = current_user.ideas.new
  end

end
