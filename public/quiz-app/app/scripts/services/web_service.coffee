'use strict'

require('angular/angular')

class WebService

  constructor: (@$http) ->
    @baseUrl = "/api/v1/"

  getQuestions: () ->
    @$http.get(@baseUrl + "questions")

  postResponse:(question_id, selected_answer_ids)->
    @$http.post(@baseUrl + "responses", {question_id: question_id, selected_answers: selected_answer_ids})

webService = angular.module "quizApp.webService", []
webService.factory "webService", ["$http", ($http) -> new WebService($http)]