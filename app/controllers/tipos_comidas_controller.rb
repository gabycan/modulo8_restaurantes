class TiposComidasController < ApplicationController

    # GET /tipos_comidas
    def listar
        @todos_los_tipos = TipoComida.all
        @titulo_link = "Mensaje desde el controlador"
    end

    # GET /nuevo_tipo_comida
    def nuevo
        @nuevo_tipo_comida= TipoComida.new
    end

    #post /nuevo_tipo_comida
    def crear
        #guardar lo que llegue del formulario en la base de datos
        datos_tipo_comida = params.require(:tipo_comida).permit(:tipo)
        nuevo_tipo = TipoComida.new(datos_tipo_comida)
        nuevo_tipo.save
        redirect_to listar_tipos_comida_path
    end
end