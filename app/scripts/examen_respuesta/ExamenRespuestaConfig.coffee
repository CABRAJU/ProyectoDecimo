'use strict'

angular.module('WissenSystem')
	.config(['$stateProvider', 'App', 'USER_ROLES', 'PERMISSIONS', '$translateProvider', ($state, USER_ROLES ,PERMISSIONS, App, $translateProvider)->

		$state
			.state('panel.examen_respuesta', { #- Estado admin.
				url: '^/examen'
				views:
					'contenido_panel':
						templateUrl: "#{App.views}examen_respuesta/examenRespuesta.tpl.html"
						controller: 'ExamenRespuestaCtrl'
				resolve: {
					resolved_user: ['AuthService', (AuthService)->
						AuthService.verificar()
					]
				}
				data: 
					pageTitle: 'Examen'
			})

		$translateProvider.translations('EN', 
			INICIO_MENU: 'Home',
			PANNEAU_DE_PIED_EXAMEN_RESPUESTA:'Foot Panel'
			GRAND_FINAL_EXAMEN_RESPUESTA:'Grand Final'
			PLAYOFFS_EXAMEN_RESPUESTA:'Playoffs'
			DÉMARRE_LANALYSE_EXAMEN_RESPUESTA:"L'analyze démarrer"
			VOUS_VOULEZ_COMMENCER_LE_TEST_EXAMEN_RESPUESTA:'Did You Start Testing'
			PAS_EXAMEN_RESPUESTA:'No'
			DÉMARRER_EXAMEN_RESPUESTA:'Begin'
		)
		.translations('ES', 
			INICIO_MENU: 'Inicio',

		)


		return
])