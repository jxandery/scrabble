class PlaysController < ApplicationController
  def index
    @plays = Play.all
  end

  def new
    @play = Play.new
  end

  def create
    words = params[:play][:word].split
    words.each do |word|
      @play = Play.create(word)
      if @play.save
        redirect_to plays_path
      else
        flash.now[:errors] = @play.errors.full_messages
        render :new
      end
    end
  end

  def separate_words
  end

  def play_params
    sep_word.require(:play).permit(:word)
  end
end
