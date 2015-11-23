angular.module('WissenSystem')

.config (['App','$stateProvider', '$translateProvider', (App, $stateProvider, $translateProvider)->
		
	$stateProvider
		.state('panel.eventos', 
			url: '^/eventos'
			views:
				'contenido_panel':
					templateUrl: "#{App.views}eventos/eventos.tpl.html"
					controller: 'EventosCtrl'

				data:
					pageTitle: 'Eventos'
		)


		.state('panel.eventos_user', 
			url: '/eventos_user'
			templateUrl: 'views/eventos/eventos_user.tpl.html'
			controller: 'EventosUserCtrl'

		)


	$translateProvider.translations('EN', 
		EVENTS_TITLE: 'Events'
		CREAR_EVENTO: 'create event '
		NUEVO_ENTIDADES:'New'
		NOMBRE_ENTIDADES:'Name'
		CAMPO_OBLIGATORIO_ENTIDADES:'Mandatory Field'
		ALIAS_ENTIDADES:'Pseudonym'
		DESCRIPCIÓN_ENTIDADES:'Description'
		EXAMEN_ACTUAL_ENTIDADES:'Current Revision'
		PARA_PRUEBAS_ENTIDADES:'Test'
		PARA_LA_FINAL_ENTIDADES:'To Final'
		CON_PAGO_ENTIDADES:'Pay'
		PRECIO_1_ENTIDADES:'Price 1'
		PRECIO_2_ENTIDADES:'Price 2'
		PRECIO_3_ENTIDADES:'Price 3'
		PRECIO_4_ENTIDADES:'Price 4'
		EVENTO_ACTUAL_ENTIDADES:'Current Events'
		HABILITAR_CHAT_PÚBLICO_ENTIDADES:'Enable Public Conversations'
		HABILITAR_CHAT_PRIVADO_ENTIDADES:'Enable Private Conversations'
		USAR_IDIOMA_UNICO_ENTIDADES:'Only the Language Use'
		IDIOMA_PRINCIPAL_ENTIDADES:'Home Language'
		IDIOMASEXTRAS_ENTIDADES:'Extra Languages'
		GUARDAR_ENTIDADES:'Save'
		CANCELAR_ENTIDADES:'Cancel'
		SEGURO_DESEA_ELIMINAR_EVENTO:'Of course, I want to Delete'
		EVENTO_EVENTO:'Event'
		ELIMINAR_EVENTO:'Remover'
		CANCELAR_REMOVE_EVENTO:'Cancel'
	)
	.translations('ES',
		EVENTS_TITLE: 'Eventos'
		CREAR_EVENTO: 'Crear Evento '
	)
	



])