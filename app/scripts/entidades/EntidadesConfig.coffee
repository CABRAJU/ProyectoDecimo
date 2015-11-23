angular.module('WissenSystem')

.config (['App','$stateProvider', '$translateProvider', (App, $stateProvider, $translateProvider)->
		
	$stateProvider
		.state('panel.entidades', 
			url: '^/entidades'
			views:
				'contenido_panel':
					templateUrl: "#{App.views}entidades/entidades.tpl.html"
					controller: 'EntidadesCtrl'

				data:
					pageTitle: 'Entidades'
		)



	$translateProvider.translations('EN', 
		ENTIDADES_MENU: 'Entities'
		CREAR_NUEVO_ENTIDADES:'Create New'
		NOMBRE_ENTIDADES:'Name'
		SELECCIONAR_LÍDER_ENTIDADES:'Choose a Leader'
		LOGO_ENTIDADES:'Logo'
		GUARDAR_ENTIDADES:'Save'
		CANCELAR_ENTIDADES:'Cancel'
		SEGURO_QUE_DESEA_ELIMINAR_REMOVE:'Of course, I want to Delete'
		ENTIDAD_REMOVE:'Endidate'
		ELIMINAR_REMOVE:'Remove'
		CANCELAR_REMOVE:'Cancel'
	)
	.translations('ES',
		ENTIDADES_MENU: 'Entidades'
	)
])