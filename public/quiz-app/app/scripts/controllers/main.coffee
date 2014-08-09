'use strict'

###*
 # @ngdoc function
 # @name quizAppApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the quizAppApp
###
angular.module('quizApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
