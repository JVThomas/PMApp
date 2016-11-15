function ImageService($http){
	this.getImages = function(){
		return $http.get('http://localhost:3000/images');
	}
}

ImageService.$inject = ['$http'];


angular
	.module('app')
	.service('ImageService', ImageService)
