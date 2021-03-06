'use strict'

angular.module('WissenSystem')

.controller('PanelCtrl', ['$scope', '$http', 'Restangular', '$state', '$cookies', '$rootScope', 'AuthService', 'Perfil', 'App', 'resolved_user', 'toastr', '$translate', '$filter', '$modal')
	($scope, $http, Restangular, $state, $cookies, $rootScope, AuthService, Perfil, App, resolved_user, toastr, $translate, $filter, $modal) ->

		
		$scope.USER = resolved_user
		#console.log '$scope.USER', $scope.USER
		$scope.imagesPath = App.imagesPath

		AuthService.verificar_acceso()

		
		$rootScope.$on '$stateChangeSuccess', (event, toState, toParams, fromState, fromParams)->
			$scope.cambiarTema('theme-zero')
		

		$scope.cambiarIdioma = (idioma)->
			$translate.use(idioma)

			for idiom in $scope.idiomas_usados
				idiom.actual = if idiom.abrev == idioma then true else false 


		$scope.set_system_event = (evento)->
			Restangular.one('eventos/set-evento-actual').customPUT({'id': evento.id}).then((r)->
				console.log 'evento cambiado: ',  r
				
				angular.forEach $scopeUSER.eventos, (eventito, key) ->
					eventito.actual = false

				evento.actual = true

				toastr.succes 'Evento actual cambiado por ' + evento.alias

		,  	(r2)->
				console.log 'Error conectando!', r2
				toastr.warning 'No se pudo cambiar el evento actual.'
		)


		

		$scope.evento_actual = {}

		# Función para establecer en el frontend el evento actual del usuario
		$scope.el_evento_actual = ()->

			if $scope.USER
				if AuthService.isAuthorized('can_work_like_admin')
					try

						$scope.evento_actual = $filter('filter')($scope.USER.eventos, {id: $scope.USER.evento_selected_id}) [0]

					catch
						$scope.evento_actual = {}
					finally 
						$rootScope.$broadcast 'cambia_evento_actual'
				else
					$scope.evento_actual = $scope.USER.evento_actual

		$scope.el_evento_actual()



		$scope.set_user_event = (evento)->
			Restangular.one('eventos/set-user-event').customPUT({'evento_id': evento.id}).then((r)->
				console.log 'Evento cambiado: ',  r
				
				$scope.USER.evento_selected_id = evento.id
				$scope.el_evento_actual() # Actualizamos el modelo del evento actual
				toastr.succes'Evento actual cambiado por' + evento.alias

				$rootScope.$broadcast 'cambia_evento_user' # Anunciamos el cambio de evento

			,  (r2)->
				console.log 'Error conectando!', r2
				toastr.warning 'No se pudo cambiar el evento actual.'

			)

		.$scope.logout = ()->
			AuthService.logout()

			Restangular.one('login/logout').customPUT().then((r)->
				console.log 'Desconectado con éxito: ',  r
			,  (r2)->
				console.log 'Error desconectando!', r2
			)

			#$state.go 'login'




			# Traemos los eventos
			.$scope.traerEventos = ()->

			Restangular.all('eventos').getList().then((r)->
				$scope.USER.eventos = r
				$scope.el_evento_actual()
			(r2)->
				console.log 'No se trajeron los eventos.'
			)

		return
	]
)
