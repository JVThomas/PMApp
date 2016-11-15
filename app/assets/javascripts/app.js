angular
	.module('app',['ui.router', 'templates', 'ngAnimate'])
	.config(['$stateProvider', '$urlRouterProvider', '$sceDelegateProvider', function($stateProvider, $urlRouterProvider, $sceDelegateProvider){
		$sceDelegateProvider.resourceUrlWhitelist(['self']);
		$stateProvider
			.state('main',{
				url: '/',
				controller: 'MainController as mainCtrl',
				templateUrl: 'main/main.html'
			});
		$urlRouterProvider.otherwise('/');
	}]);
