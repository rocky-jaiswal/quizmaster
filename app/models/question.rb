class Question < ActiveRecord::Base
  validates_presence_of :content
  has_many :answers

  def as_json(options={})
    {
      content: content,
      answers: self.answers.map{ |a| {answer_id: a.id, answer_content: a.content} }
    }
  end
end
