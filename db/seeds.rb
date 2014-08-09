questions = Question.create([
  { content: 'Q1' },
  { content: 'Q2' },
  { content: 'Q3' }
])

Answer.create(content: 'A11', correct: false, question: questions.first)
Answer.create(content: 'A12', correct: false, question: questions.first)
Answer.create(content: 'A13', correct: false, question: questions.first)
Answer.create(content: 'A14', correct: true,  question: questions.first)

Answer.create(content: 'A21', correct: false, question: questions.second)
Answer.create(content: 'A22', correct: false, question: questions.second)
Answer.create(content: 'A23', correct: true,  question: questions.second)
Answer.create(content: 'A24', correct: false, question: questions.second)

Answer.create(content: 'A31', correct: false, question: questions.last)
Answer.create(content: 'A32', correct: true,  question: questions.last)
Answer.create(content: 'A33', correct: true,  question: questions.last)
Answer.create(content: 'A34', correct: false, question: questions.last)
