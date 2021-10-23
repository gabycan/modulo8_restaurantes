#Los controladores son el plural
class UsuariosController <ApplicationController

    # GET /usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    #GET /usuarios/:id
        def mostrar
            @usuario = Usuario.find(params)
        end

    # POST /usuarios
    def guardar
        datos_usuario = params.require(:usuario)
        .permit(nombre_usuario, :password_usuario)
        @usuario = Usuario.new(datos_usuario)
        if @usuario.after_save
            #mostrar la vista "consultar" usuario
        else
            render :crear
        end
    end
end