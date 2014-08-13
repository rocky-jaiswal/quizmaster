class API::V1::ResponsesController < ApplicationController

  def create
    question = Question.find(params["question_id"])
    result = question.is_correct_response?(params["selected_answers"])
    render json: {correct: result}
  end

end