'use strict'

app = require("./../app")
_ = require("underscore")

class MainCtrl

  constructor: (@$scope, @$location, @webService) ->
    @index = 0
    @$scope.submitResponse = @submitResponse
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
    @clearResponses()
    @$scope.question = @questions[index]
    @$scope.answers  = @questions[index].answers

  nextQuestion:=>
    @index = @index + 1 if @index + 1 < @questions.length
    @showQuestion(@index)

  prevQuestion:=>
    @index = @index - 1 if @index > 0
    @showQuestion(@index)

  submitResponse:=>
    selected = _.filter(@$scope.answers, (a)-> a.selected)
    selected = _.map(selected, (s)-> s.answer_id)
    promise  = @webService.postResponse(@questions[@index].id, selected)
    promise.then @showResult, @error

  showResult:(response)=>
    @$scope.rightResponse = true if response.data.correct
    @$scope.wrongResponse = true unless response.data.correct

  clearResponses:=>
    @$scope.rightResponse = false
    @$scope.wrongResponse = false

MainCtrl.$inject = ["$scope", "$location", "webService"]
app.controller "MainCtrl", MainCtrl