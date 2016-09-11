class User::IdeasController < ApplicationController

  def new
    @idea = current_user.ideas.new
  end

  def create
    @idea = current_user.ideas.new(ideas_params)
    if @idea.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def ideas_params
    params.require(:idea).permit(:title, :description, :user_id)
  end

end
