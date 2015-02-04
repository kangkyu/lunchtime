class SuggestionsController < ApplicationController
  before_action :set_suggestion, only: [:show, :destroy]

  def index
    @suggestions = Suggestion.all
  end

  def new
    @suggestion = Suggestion.new
  end

  # Saves new suggestion
  def create
    @suggestion = Suggestion.new(suggestion_params)
    if @suggestion.save
      redirect_to suggestions_path
    else
      render 'new'
    end
  end

  def show
  end

  # Destroys a submitted suggestion
  def destroy
    @suggestion.destroy
    flash[:success] = "The suggestion has been deleted."
    redirect_to root_url
  end

  private

    def suggestion_params
      params.require(:suggestion).permit(:name)
    end

    def set_suggestion
      @suggestion = Suggestion.find(params[:id])
    end
end
