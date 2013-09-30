'use strict';
angular.module('anchorotr', [
    "ui.state", 
    "ui.route",
    "ui.bootstrap",
    "anchorotr.home",
    "anchorotr.about",
    "anchorotr.location",
    "anchorotr.menus",
    "anchorotr.reservation"
])
.config( function myAppConfig($stateProvider, $urlRouterProvider) {      

})
.run(function run(titleService, $rootScope, $state, $stateParams){
    $rootScope.$state = $state;    
    $rootScope.$stateParams = $stateParams;
    titleService.setSuffix(' | The Anchor-OTR');   
    $state.transitionTo("home");
})
.controller('AppCtrl', function AppCtrl($scope, $location, titleService, menuCollapseService, $state, $stateParams){
    titleService.setTitle("Home");   
    $scope.baseUrl = document.getElementById("baseUrl").getAttribute("value");
    $scope.isCollapsed = menuCollapseService.getCollapsed();
    
    $scope.toggleMenu = function(){
        if($state.includes('menus')){
            menuCollapseService.setCollapsed(false);
        } else {
            menuCollapseService.setCollapsed(!menuCollapseService.getCollapsed().val);
        }
    }
    
});






