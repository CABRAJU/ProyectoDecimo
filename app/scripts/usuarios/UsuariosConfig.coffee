angular.module('WissenSystem')

.config(['$stateProvider', 'App', 'PERMISSIONS', '$translateProvider', ($stateProvider, App, PERMISSIONS, $translateProvider)->

	$stateProvider
		.state('panel.usuarios', { #- Estado admin.
			url: '^/usuarios'
			views:
				'contenido_panel':
					templateUrl: "#{App.views}usuarios/usuarios.tpl.html"
					controller: 'UsuariosCtrl'

				data: 
					pageTitle: 'Usuarios'
					need_permissions: [PERMISSIONS.can_edit_usuarios]
		})

	$translateProvider.translations('EN', 
		BUSCAR_PLACEHOLDER: 'Find',
		TIP_BTN__NUEVA_PREGUNTA: 'Create a new question'
		BTN_NUEVA_PREGUNTA: 'New question'
	)
	.translations('EN', 
		BUSCAR_PLACEHOLDER: 'Find',
		TIP_BTN__NUEVA_PREGUNTA: 'Create a new question'
		BTN_NUEVA_PREGUNTA: 'New question'
		NUEVO_USUARIOS: 'New'
		NOMBRE_USUARIOS: 'Name'
		CAMPO_OBLIGATORIO_USUARIOS: 'Required field'
		APELLIDOS_USUARIOS: 'Name'
		SEXO_USUARIOS: 'Sex'
		MASCULINO_USUARIOS: 'Male'
		FEMENINO_USUARIOS: 'Woman'
		USERNAME_USUARIOS: 'Username'
		EMAIL_USUARIOS: 'E-mail'
		CELULAR_USUARIOS: 'Phone'
		EDAD_USUARIOS: 'Age'
		INSCRIBIR_EN_USUARIOS: 'You get'
		MATEMÁTICAS_A_USUARIOS: 'Mathematics A'
		MATEMÁTICAS_B_USUARIOS: 'Mathematics B'
		MATEMÁTICAS_C_USUARIOS: 'Mathematics C'
		ESPAÑOL_A_USUARIOS: 'Spanish A'
		ESPAÑOL_B_USUARIOS: 'Spanish B'
		GUARDAR_USUARIOS: 'Save'
		CANCELAR_USUARIOS: 'Cancel'
		USUARIOS_USUARIOS:  'Users'
	)
	

])