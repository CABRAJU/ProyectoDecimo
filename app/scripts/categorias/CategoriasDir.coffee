angular.module('WissenSystem')

.directive('categoriasDir',['App', (App)-> 

	restrict: 'E'
	templateUrl: "#{App.views}categorias/categoriasDir.tpl.html"

	scope: 
		idiomapreg: "="
		eventoactual: "="

	link: (scope, iElem, iAttrs)->
		# Debo agregar la clase .loading-inactive para que desaparezca el loader de la pantalla.
		# y eso lo puedo hacer con el ng-if

	controller: 'CategoriasDirCtrl'

])