class Question < ActiveRecord::Base
  validates_presence_of :content
  has_many :answers

  def is_correct_response?(selected_answers)
    self.answers.where(correct: true).map(&:id).sort == selected_answers.sort
  end

  def as_json(options={})
    {
      id: self.id,
      content: content,
      answers: self.answers.map{ |a| {answer_id: a.id, answer_content: a.content} }
    }
  end
end
