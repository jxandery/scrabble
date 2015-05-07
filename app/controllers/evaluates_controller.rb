class EvaluatesController < ApplicationController

  #def initialize
    #@words = []
  #end

  def new
    @evaluate = Evaluate.new

  end

  def index
    @words = params[:evaluate][:words].split
  end

end
