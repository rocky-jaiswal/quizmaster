'use strict'

app = require("./../app")

app.controller 'AboutCtrl', ($scope) ->
  $scope.message = "Built with Rails + Angular.js + Browserify"
