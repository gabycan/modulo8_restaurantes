class RestaurantesController < ApplicationController

    #GET / restaurantes/nuevo
    def crear
        @restaurante = Restaurante.new
        @tipos_comidas = TipoComida.all
    end

     #POST / restaurantes
     def guardar
    
    #
    end
