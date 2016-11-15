angular
	.module('app',['ui.router', 'ngResource', 'templates', 'ngAnimate'])
	.config(['$stateProvider', '$urlRouterProvider', '$sceDelegateProvider'], function($stateProvider, $urlRouterProvider, $sceDelegateProvider){
		$sceDelegateProvider.resourceUrlWhitelist(['self']);
		$stateProvider
			.state('main',{
				url: '/',
				controller: 'MainController as mainCtrl',
				templateURL: 'main/main.html',
			});
		$urlRouterProvider.otherwise('/');
	});
