"use strict";

(function(){

  var toaster = angular.module('app.toast', ['ngMaterial'])

  toaster.controller('toasterController', function($scope, $mdToast, $document) {
    var last = {
        bottom: false,
        top: true,
        left: false,
        right: true
      };
    $scope.toastPosition = angular.extend({},last);
    $scope.getToastPosition = function() {
      sanitizePosition();
      return Object.keys($scope.toastPosition)
        .filter(function(pos) { return $scope.toastPosition[pos]; })
        .join(' ');
    };
    function sanitizePosition() {
      var current = $scope.toastPosition;
      if ( current.bottom && last.top ) current.top = false;
      if ( current.top && last.bottom ) current.bottom = false;
      if ( current.right && last.left ) current.left = false;
      if ( current.left && last.right ) current.right = false;
      last = angular.extend({},current);
    }
    $scope.showCustomToast = function() {
      $mdToast.show({
        controller: 'ToastCtrl',
        templateUrl: 'toast-template.html',
        parent : $document[0].querySelector('#toastBounds'),
        hideDelay: 6000,
        position: $scope.getToastPosition()
      });
    };

    $scope.showSimpleToast = function( message ) {
      $mdToast.show(
        $mdToast.simple()
          .textContent(message)
          .position($scope.getToastPosition())
          .hideDelay(3000)
      );
    };

    $scope.showActionToast = function(message) {
      var toast = $mdToast.simple()
            .textContent(message)
            .action('OK')
            .highlightAction(false)
            .position($scope.getToastPosition());
      $mdToast.show(toast).then(function(response) {
        if ( response == 'ok' ) {
          alert('You clicked \'OK\'.');
        }
      });
    };

    $scope.closeToast = function() {
      $mdToast.hide();
    };
  });

})();