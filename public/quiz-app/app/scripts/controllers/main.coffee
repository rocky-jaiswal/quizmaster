'use strict'

app = require("./../app")

class MainCtrl

  constructor: (@$scope, @$location, @webService) ->
    @index = 0
    @$scope.nextQuestion = @nextQuestion
    @$scope.prevQuestion = @prevQuestion
    promise = @webService.getQuestions()
    promise.then @success, @error

  success: (response) =>
    @questions = response.data
    @showQuestion(@index)

  error: (response) =>
    console.log response

  showQuestion:(index)=>
    @$scope.question = @questions[index]
    @$scope.answers  = @questions[index].answers

  nextQuestion:=>
    @index = @index + 1 if @index + 1 < @questions.length
    @showQuestion(@index)

  prevQuestion:=>
    @index = @index - 1 if @index > 0
    @showQuestion(@index)

MainCtrl.$inject = ["$scope", "$location", "webService"]
app.controller "MainCtrl", MainCtrl