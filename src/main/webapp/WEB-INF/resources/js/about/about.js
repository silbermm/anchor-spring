'use strict';
angular.module('anchorotr.about', [
    'ui.state',
    'titleService',
]).config(function config($stateProvider) {
    $stateProvider.state('about', {
        url: '/about',
        views: {
            "main": {
                controller: "AboutCtrl",
                templateUrl: 'resources/js/about/about.tpl.html'
            }
        }
    })
}).controller('AboutCtrl', function LocationController($scope, titleService) {
    

})
