'use strict'

require('angular/angular')

class WebService

  constructor: (@$http) ->
    @baseUrl = "/api/v1/"

  getQuestions: () ->
    @$http.get(@baseUrl + "questions")

webService = angular.module "quizApp.webService", []
webService.factory "webService", ["$http", ($http) -> new WebService($http)]