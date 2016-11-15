var navbarComponent = {
	controllerAs: 'navbarCtrl',
	templateURL: 'navbar/navbar.html',
	controller: function(){
		var ctrl = this;
		ctrl.logo = '<%=image_path(PennMedLogo_UPHS.png)%>';
	}
}
angular
	.module('app')
	.component('navbarComponent', navbarComponent);
