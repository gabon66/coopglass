/**
 * Created by gfelipe on 05/03/16.
 */
angular.module('App', ['ngAnimate','ui.bootstrap'])
    .controller('ListController',function($scope,$http,$uibModal) {
        var  URL_PRODUCTS = "products.php?action=list";


        var getProducs = function(){
            $http.get(URL_PRODUCTS
            ).success(function(products){

                $scope.products=products;

                console.log(products);
            });
        };


        getProducs();



        $scope.openModal = function(product) {
           console.log(product);
            $scope.product_selected=product
            $uibModal.open({
                animation:true,
                templateUrl: 'modal_product',
                controller: 'ModalProduct',
                resolve: {
                    prod: function () {
                        return $scope.product_selected;
                    }
                }
            });
        };


        $scope.openModalNew = function() {

            $uibModal.open({
                animation:true,
                templateUrl: 'modal_product_new',
                controller: 'ModalProductNew',

            });
        };

    })
    .controller('ListAdminController',function($scope,$http,$uibModal) {
        var  URL_PRODUCTS = "../products.php?action=list";
        var  URL_PRODUCTS_DELETE = "../products.php?action=delete";


        var getProducs = function(){
            $http.get(URL_PRODUCTS
            ).success(function(products){

                $scope.products=products;

                console.log(products);
            });
        };


        getProducs();





        $scope.openModal = function(product) {
            console.log(product);
            $scope.product_selected=product
            $uibModal.open({
                animation:true,
                templateUrl: 'modal_product',
                controller: 'ModalProduct',
                resolve: {
                    prod: function () {
                        return $scope.product_selected;
                    }
                }
            });
        };


        $scope.openModalNew = function() {

            $uibModal.open({
                animation:true,
                templateUrl: 'modal_product_new',
                controller: 'ModalProductNew',

            });
        };


        $scope.delete = function(id) {
            $http.get(URL_PRODUCTS_DELETE+"&id="+id
            ).success(function(){
                getProducs();
            });
        };

    })
    .controller('ModalProduct', ['$scope','$http','$uibModalInstance','prod','$window',function ($scope,$http,$uibModalInstance,prod,$window) {
        var  URL_MAIL = "mail.php";
        var  URL_PRODUCT_UPDATE = "../products.php?action=update";

        $scope.enviado=false;
        $scope.img = prod.img;
        $scope.descript=prod.descript,
        $scope.id= prod.id;
        $scope.name = prod.name;


        //$scope.img = product.img;
        $scope.sendMail= function() {

            var data = $.param({
                json: JSON.stringify({
                    name: $scope.name,
                    mail: $scope.mail,
                    mensaje: $scope.mensaje,
                    telefono: $scope.telefono,
                    id:$scope.id
                })
            });

            $http({
                url: 'mail.php',
                method: "POST",
                headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                data: {
                    name: $scope.namePerson,
                    id:$scope.id,
                    mail: $scope.mail,
                    mensaje: $scope.mensaje,
                    telefono: $scope.telefono
                }
            }).then(function(response) {
                // success
                console.log(response);
                $scope.enviado=true;
            },
            function(response) { // optional
                // failed
            });

        };


        $scope.save = function() {
            console.log($scope.name)
            $http({
                url: URL_PRODUCT_UPDATE+"&id="+$scope.id,
                method: "POST",
                headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                data: {
                    name: $scope.name,
                    descript: $scope.descript
                }
            }).then(function(response) {
                    // success
                    console.log(response);
                    $uibModalInstance.close();
                    $window.location.reload();
                },
                function(response) { // optional
                    console.log(response);
                    // failed
                });
        };





        $scope.close = function() {
            $uibModalInstance.close();
        };
    }])
    .controller('ModalProductNew', ['$scope','$http','$uibModalInstance',function ($scope,$http,$uibModalInstance) {





        $scope.close = function() {
            $uibModalInstance.close();
        };




    }]);

