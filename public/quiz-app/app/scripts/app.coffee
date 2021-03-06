'use strict'

require('angular/angular')
require('angular-route/angular-route')

app = angular.module('quizApp', ['ngRoute', 'quizApp.webService'])

app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

module.exports = app