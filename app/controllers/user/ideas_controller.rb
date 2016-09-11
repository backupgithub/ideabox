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

  def show
    current_idea
  end

  def edit
    current_idea
  end

  def update
    @idea = Idea.find(params[:format])
    if @idea.update(ideas_params)
      redirect_to user_idea_path(@idea)
    else
      render :edit
    end
  end

  def destroy
    current_idea.destroy
    redirect_to user_path
  end

  private

  def ideas_params
    params.require(:idea).permit(:title, :description, :user_id)
  end

  def current_idea
    @idea = Idea.find(params[:id])
  end

end
