angular.module('WissenSystem')

.config (['App','$stateProvider', '$translateProvider', (App, $stateProvider, $translateProvider)->
		
	$stateProvider
		.state('panel.evaluaciones', 
			url: '^/evaluaciones'
			views:
				'contenido_panel':
					templateUrl: "#{App.views}evaluaciones/evaluaciones.tpl.html"
					controller: 'EvaluacionesCtrl'

				data:
					pageTitle: 'Eventos'
		)



	$translateProvider.translations('EN', 
		ENTIDADES_TITLE: 'Test'
		CREAR_NUEVO_EVALUACION:'Create a New'
		NUEVA_EVALUACION:'New Evaluation'
		DESCRIPCION_EVALUACION:'Description'
		CATEGORIA_EVALUACION:'Catégorie'
		ACTUAL_EVALUACION:'Current'
		SERA_LA_EVALUACION_EVALUACION:"La Sera Rating"
		DURACION_POR_PREGUNTAS_EVALUACION:'Time For Questions'
		DURACION_POR_EXAMEN_EVALUACION:"Duration of Examination"
		DURACION_POR_PREGUNTA_EVALUACION:'For Question Time'
		RESPONDER_UNA_POR_UNA_EVALUACION:'One by One Response'
		RESPONDER_UNA_POR_UNA_O_TODAS_LAS_PREGUNTAS_EVALUACION: ' The Reply All to one or Questions'
		CANCELAR_EVALUACION:'Cancel'
		GUARDAR_EVALUACION:'Save'
		SEGURO_QUE_DESEA_ELIMINAR_REMOVE_EVALUACIONES:'Sure That You Want Delete'
		ELIMINAR_REMOVE_EVALUACIONES:'Remover'
		CANCELAR:'Cancel'
	)
	.translations('ES',
		ENTIDADES_TITLE: 'Evaluaciones'
	)



])