'use strict'

###*
 # @ngdoc function
 # @name quizAppApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the quizAppApp
###
angular.module('quizApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
