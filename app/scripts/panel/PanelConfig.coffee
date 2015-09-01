'use strict'

angular.module('WissenSystem')
	.config ['$stateProvider', 'App', 'USER_ROLES', 'PERMISSIONS', '$translateProvider', ($state, App, USER_ROLES, PERMISSIONS, $translateProvider) ->

		$state
			.state('panel', { #- Estado admin.
				url: '/panel'
				views:
					'principal':
						templateUrl: "#{App.views}panel/panel.tpl.html"
						controller: 'PanelCtrl'
				resolve: { 
					resolved_user: ['AuthService', (AuthService)->
						#AuthService.verificar()
					]
				}
				data: 
					pageTitle: 'WissenSystem - Bienvenido'
			})


		$translateProvider.preferredLanguage('ES');

		$translateProvider.translations('EN', 
			INICIO_MENU: 'Home'
			EVENTS_MENU: 'Events'
			USERS_MENU: 'Users'
			IDIOMA_MENU: 'Language'
			PREGUNTAS_MENU: 'Questions'
			CONSTRUCCION_MENU: 'Building'
			CATEGORIAS_MENU: 'CATEG'

		)
		.translations('ES',
			INICIO_MENU: 'Inicio'
			EVENTS_MENU: 'Eventos'
			USERS_MENU: 'Usuarios'
			IDIOMA_MENU: 'Idioma'
			PREGUNTAS_MENU: 'Preguntas'
			CONSTRUCCION_MENU: 'Construcción'
			CATEGORIAS_MENU: 'CATEGORIAS'			

		 )

		return
	]
