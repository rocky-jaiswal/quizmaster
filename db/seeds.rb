questions = Question.create([
  { content: "Pink Floyd's album \"The Dark Side of the Moon\" was released in?" },
  { content: 'Norwegian wood from Beatles uses which popular Indian instrument?' },
  { content: 'With or without you, features in which U2 album?' }
])

Answer.create(content: '1979', correct: false, question: questions.first)
Answer.create(content: '1973', correct: true, question: questions.first)
Answer.create(content: '1988', correct: false, question: questions.first)
Answer.create(content: '1981', correct: false,  question: questions.first)

Answer.create(content: 'Tabla', correct: false, question: questions.second)
Answer.create(content: 'Tarang', correct: false, question: questions.second)
Answer.create(content: 'Sitar', correct: true,  question: questions.second)
Answer.create(content: 'Bansuri', correct: false, question: questions.second)

Answer.create(content: 'The Joshua Tree', correct: true, question: questions.last)
Answer.create(content: 'War', correct: false,  question: questions.last)
Answer.create(content: 'Achtung Baby', correct: false,  question: questions.last)
Answer.create(content: 'Pop', correct: false, question: questions.last)
