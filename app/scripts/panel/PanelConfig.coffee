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
						AuthService.verificar()
					]
				}
				data: 
					pageTitle: 'WissenSystem - Bienvenido'
			})


		$translateProvider.preferredLanguage('ES');


		$translateProvider.translations('EN', 
			INICIO_MENU: 'Home'
			USERS_MENU: 'Users'
			EVENTS_MENU:'Events'
			ENTIDADES_MENU: 'Entities'
			CATEGORIAS_MENU: 'Categories'
			PREGUNTAS_MENU: 'Questions'
			EVALUACIONES_MENU:'Questions'
			IDIOMA_MENU: 'Language'
			SELECCIONE_EVENTO: 'Choose'
			ELIMINATORIAS: "Playoffs"
			GRAN_FINAL: 'Grand Final'
			INSCRITO_EN: 'Join In'
			EXAM_HECHOS: 'Exams Facts'
			SELECCIONA_EL_EVENTO_QUE_DESEAS_PANEL: "Select Event What You Want"
			EVENTOS_PANEL: 'Events'
			ACTUAL_PANEL: 'Current'
			ESTABLECER_COMO_EVENTO_ACTUAL_PANEL: 'Real events Set'
			PERFIL_PANEL: 'Profile'
			CONFIGURACION_PANEL: 'Configuration'
			IMAGENES_PANEL: 'Images'
			SALIR_PANEL: 'Leave'
			CONSTRUCCION_PANEL: 'Building'
		)
		.translations('ES',
			INICIO_MENU: 'Inicio'
			EVENTS_MENU:'Eventos'
			ENTIDADES_MENU:'Entidades'
			CATEGORIAS_MENU:'Categorias'
			PREGUNTAS_MENU: 'Preguntas'
			EVALUACIONES_MENU:'Evaluaciones'
			USERS_MENU:'Usuarios'
			IDIOMA_MENU: 'Idioma'
			SELECCIONE_EVENTO: 'Selecciona el evento que deseas'
			ELIMINATORIAS: 'Eliminatorias'
			GRAN_FINAL: 'Gran final'
			INSCRITO_EN: 'Esta inscrito en:'
			EXAM_HECHOS: 'Examanes hechos'
			
		)
	

		return
	]
