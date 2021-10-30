#Los controladores son en plural
class UsuariosController <ApplicationController

    before_action :buscar_usuario, only: [:mostrar, :editar, :actualizar, :eliminar]
    
     # GET /usuarios
    def listar
        @usuarios = Usuario.all
    end
    
    # GET /usuarios/nuevo
    def crear
        @usuario = Usuario.new
    end

    #GET /usuarios/:id
    def mostrar
        @usuario = Usuario.find(params[:id])
    end

    #GET /usuarios/:id/editar
    def editar
        @usuario = Usuario.find(params[:id])
    end

    # POST /usuarios
    def guardar
        datos_usuario = params.require(:usuario).permit(nombre_usuario, :password, :password_confirmation)
        @usuario = Usuario.new(datos_usuario)
        if @usuario.save
            #mostrar la vista "consultar" usuario
            redirect_to usuario_path(@usuario)
        else
            render :crear
        end
    end

    #PATCH /usuarios/:id
    def actualizar
        @usuario = Usuario.find(params[:id])
        datos_usuario = params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
        if @usuario.update(datos_usuario)
            redirect_to usuario_path(@usuario)
        else
            render :editar
        end
    end

    #DELETE /usuarios/:id
    def eliminar
        @usuario = Usuario.find(params[:id])
        if @usuario.destroy #intenta eliminar un registro
            flash[:eliminar] = 
            "Usuario #{ @usuario.nombre_usuario} eliminado"
        else
            flash[:eliminar] = "NO se pudo eliminar"
        end
        redirect_to nuevo_usuario_path
    end

    private
    def params_usuario #devuelve la lista de datos del formulario en HASH
        return params.require(:usuario).permit(:nombre_usuario, :password, :password_confirmation)
    end

    def buscar_usuario
        @usuario = Usuario.find(params[:id])
    end
end