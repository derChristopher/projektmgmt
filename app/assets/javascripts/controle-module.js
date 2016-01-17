
"use strict";

(function(){

  var controle = angular.module('app.controle', ['ngMaterial'] );

  controle.config( function() {

  });


  controle.run ( function (){
  });


  controle.controller ('controleController', function($scope, $timeout, $mdSidenav, $mdComponentRegistry, $log, projectService) {

    // Option #1
    //
    // $scope.isOpen = function() { return $mdSidenav('right').isOpen(); };
    // $scope.toggle = function() { $mdSidenav('right').toggle() };


    // Option #2 - See https://github.com/angular/material/issues/974
    $scope.toggle = angular.noop;
    $scope.isOpen = function() { return false };

    $mdComponentRegistry
      .when('right')
      .then( function(sideNav){

        $scope.isOpen = angular.bind( sideNav, sideNav.isOpen );
        $scope.toggle = angular.bind( sideNav, sideNav.toggle );

      });

    $scope.toggleLeft = function() {
      $mdSidenav('left').toggle()
                        .then(function(){
                            $log.debug("toggle left is done");
                        });
    };

    $scope.close = function() {
      $mdSidenav('left').close()
                        .then(function(){
                          $log.debug("close LEFT is done");
                        });
    };

    var self = this;
    self.simulateQuery = true;
    self.isDisabled    = false;
    self.repos         = loadAll();
    self.querySearch   = querySearch;
    self.selectedItemChange = selectedItemChange;
    self.searchTextChange   = searchTextChange;
    // ******************************
    // Internal methods
    // ******************************
    /**
     * Search for repos... use $timeout to simulate
     * remote dataservice call.
     */
    function querySearch (query) {
      var results = query ? self.repos.filter( createFilterFor(query) ) : self.repos,
          deferred;

      $log.debug(results);

      if (self.simulateQuery) {
        deferred = $q.defer();
        $timeout(function () { deferred.resolve( results ); }, Math.random() * 1000, false);
        return deferred.promise;
      } else {
        return results;
      }
    }
    function searchTextChange(text) {
      $log.debug('Text changed to ' + text);
    }
    function selectedItemChange(item) {
      $log.debug('Item changed to ' + JSON.stringify(item));
    }
    /**
     * Build `components` list of key/value pairs
     */
    function loadAll() {
      var repos = projectService.getProjects();
      $log.debug("loadAll() ");
      $log.debug(repos);
      return repos.map( function (repo) {
        repo.value = repo.name.toLowerCase();
        return repo;
      });
    }
    /**
     * Create filter function for a query string
     */
    function createFilterFor(query) {
      var lowercaseQuery = angular.lowercase(query);
      return function filterFn(item) {
        return (item.value.indexOf(lowercaseQuery) === 0);
      };
    }
  })

})();
