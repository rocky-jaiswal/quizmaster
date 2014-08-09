class API::V1::QuestionsController < ApplicationController

  def index
    questions = Question.includes(:answers)
    render json: questions
  end

end