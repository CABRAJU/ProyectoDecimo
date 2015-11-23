angular.module('WissenSystem')

.config (['App','$stateProvider', '$translateProvider', (App, $stateProvider, $translateProvider)->
		
	$stateProvider
		.state('panel.categorias', 
			url: '^/categorias'
			views:
				'contenido_panel':
					templateUrl: "#{App.views}categorias/categorias.tpl.html"
					controller: 'CategoriasCtrl'

				data:
					pageTitle: 'Categorias'
		)



	$translateProvider.translations('EN', 
		CATEGORIAS_TITLE: 'Categs'
		NIVELES_TITLE: 'Levels'
		DISCIPLINA_TITLE: 'Disciplines'
		EDITAR_CATEGORIAS: 'Edit Categories'
		ELIMINAR_CATEGORIAS: 'Remove Categories'
		EDITAR_CATEGORIA_EN_IDIOMAS: 'Edit categories Language'
		TRADUCIDO_CATEGORIAS: 'Translated categories'
		CERRAR_CATEGORIAS: 'Close Categories'
		APLICAR_CATEGORIAS: 'Apply Categories'
		FINALIZAR_CATEGORIAS: 'Final Categories'
		CREAR_CATEGORIA: 'Create Category'
		EDITAR_DISCIPLINA: 'Edit Subject'
		ELIMINAR_DISCIPLINA: 'Eliminate Discipline'
		EDITAR_DISCIPLINA_EN_IDIOMAS: 'Remove Language Course'
		DISCIPLINA_EN: 'Discipline'
		NOMBRE_NIVEL: 'Level Name'
		DESCRIPCION_DISCIPLINA: 'Course Description'
		TRADUCIDO_DISCIPLINA: 'Translated Discipline'
		CERRAR_DISCIPLINA: 'Close Discipline'
		APLICAR_DISCIPLINA: 'Apply the Discipline'
		FINALIZAR_DISCIPLINA: 'Discipline Final'
		CREAR_DISCIPLINA: 'Create DisciplineEdit'
		EDITAR_NIVEL: 'Edit Level'
		ELIMINAR_NIVEL: 'Remove Level'
		EDITAR_NIVEL_EN_IDIOMAS: 'Level Editing Languages'
		NIVEL_EN: 'Level'
		NOMBRE_NIVEL: 'Level Name'
		DESCRIPCIÓN_NIVEL: 'Description Level'
		TRADUCIDO_NIVEL: 'Translated Level'
		CERRAR_NIVEL: 'Closing Level'
		APLICAR_NIVEL: 'Apply Level'
		FINALIZAR_NIVEL: 'Final Level'
		CREAR_NIVEL: 'Create Level'
		SEGURO_QUE_DESEA_ELIMINAR_REMOVE_CATEGORIA: 'Remove Sure you want Delete Category'
		CATEGORIAS_REMOVE_CATEGORIA: 'Remove Category Categories'
		ELIMINAR_REMOVE_CATEGORIA: 'Remove Category Remove'
		CANCELAR_REMOVE_CATEGORIA: 'Remove Cancel Category'
		SEGURO_QUE_DESEA_ELIMINAR_REMOVE_DISCIPLINA: 'Remover Certeza de que Deseja Excluir Disciplina'
		CATEGORIAS_REMOVE_DISCIPLINA: 'Remove Course categories'
		ELIMINAR_REMOVE_DISCIPLINA: 'Remove remove Discipline'
		CANCELAR_REMOVE_DISCIPLINA: 'Remove Cancel Discipline'
		SEGURO_QUE_DESEA_ELIMINAR_REMOVE_NIVEL: 'Remove sure you want to delete level'
		CATEGORIAS_REMOVE_NIVEL: 'Remove Level Category'
		ELIMINAR_REMOVE_NIVEL: 'Remove Remove Level'
		CANCELAR_REMOVE_NIVEL: 'Remove Cancel Level'
	)
	.translations('ES',
		CATEGORIAS_TITLE: 'Categorias'
		NIVELES_TITLE: 'Niveles'
		DISCIPLINA_TITLE: 'Disciplinas'
	)


])