class TiposComidasController < ApplicationController

    # GET /tipos_comidas
    def listar
        @todos_los_tipos = TipoComida.all
        @titulo_link = "Registrar nuevo tipo de comida"
    end

    # GET /tipos_comidas/nuevo
    def crear
        @tipo_comida= TipoComida.new
    end

    # GET /tipos_comidas/:id
    def mostrar
        #vista para mostrar el detalle de un tipo de comida
        #por ejemplo, podríamos mostrar todos los restaurantes adjuntos
        @tipo_comida = TipoComida.find(params:[id])
    end

    # GET /tipos_comidas/:id/editar
    def editar
        #mostrar el formulario con los datos de un registro para cambiarlos
    end

    #POST /nuevo_tipo_comida
    def guardar
        #guardar lo que llegue del formulario en la base de datos
        datos_tipo_comida = params.require(:tipo_comida).permit(:tipo)
        nuevo_tipo = TipoComida.new(datos_tipo_comida)
        nuevo_tipo.save

        redirect_to tipos_comidas_path
    end

    #DELETE tipos_comidas/:id
    def eliminar
        #pasos para eliminar un registro
        #1. buscar el registro por ID
        tipo = TipoComida.find(params[:id])
        #2. intentar eliminar el registro
        tipo.destroy
        redirect_to tipos_comidas_path
    end
end