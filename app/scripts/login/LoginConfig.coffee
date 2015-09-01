'use strict'

angular.module('WissenSystem')
.config(['$stateProvider', 'App', 'USER_ROLES', 'PERMISSIONS', '$translateProvider', ($stateProvider, App, USER_ROLES, PERMISSIONS, $translateProvider)->
	

	$stateProvider

	.state('panel.login', { #- Estado admin.
				url: '^/login'
				views:
					'contenido_panel':
						templateUrl: "#{App.views}login/login.tpl.html"
						controller: 'loginCtrl'

				data: 
					pageTitle: 'login'
			})


	$translateProvider.translations('EN', 
		LOGIN_MSG: 'Sing In to the panel'
	)
	.translations('ES', 
		LOGIN_MSG: 'Ingresar al panel'
	 )

])