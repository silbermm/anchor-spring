'use strict';
angular.module('anchorotr', [
    "ui.state",
    "ui.route",
    'angular-growl',
    "anchorotr.menus",
    "angulartics",
    "angulartics.google.analytics"
]).config(function myAppConfig($locationProvider, growlProvider) {
    $locationProvider.hashPrefix('!');
    growlProvider.globalTimeToLive(5000);
}).run(function run(titleService, authService, $rootScope, $state, $stateParams) {
    $rootScope.$state = $state;
    $rootScope.$stateParams = $stateParams;
    titleService.setSuffix(' | The Anchor-OTR');    
}).controller('AppCtrl', function AppCtrl($scope,titleService,authService,$state,$http,$log,growl){	
	titleService.setTitle("Home");                  
    authService.isAuthenticated().then(function(d){
       if(d.status === 200){
           $scope.isAuthenticated = true;
           $scope.username = d.data.username;
           $scope.isAdmin = true;
       } 
    });
                
})
;





