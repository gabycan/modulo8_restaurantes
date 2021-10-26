Rails.application.routes.draw do

  #Rutas Tipos Comidas
  get 'tipos_comidas',            to: 'tipos_comidas#listar',   as: 'tipos_comidas'       #listar
  get 'tipos_comidas/nuevo',      to: 'tipos_comidas#crear',    as: 'nuevo_tipo_comida'   #formulario de nuevo
  get 'tipos_comidas/:id',        to: 'tipos_comidas#mostrar',  as: 'tipo_comida'         #vista del detalle de un tipo 
  get 'tipos_comidas/:id/editar', to: 'tipos_comidas#editar',   as: 'editar_tipo_comida'  #formulario para editar el registro

  post 'tipos_comidas',           to: 'tipos_comidas#guardar'
  put 'tipos_comidas/:id',        to: 'tipos_comidas#actualizar'
  patch 'tipos_comidas/:id',      to: 'tipos_comidas#actualizar'
  delete 'tipos_comidas/:id',     to: 'tipos_comidas#eliminar'

# Puntajes










# Usuarios

get 'usuarios/nuevo',           to: 'usuarios#crear',   as: 'nuevo_usuario'
get 'usuarios/:id',             to: 'usuarios#mostrar', as: 'usuario'
get 'usuarios/:id/editar',      to: 'usuarios#editar', as: 'editar_usuario'

post 'usuarios',                to: 'usuarios#guardar', as: 'usuarios'
patch 'usuarios/:id',           to: 'usuarios#actualizar'
put 'usuarios/:id',             to: 'usuarios#actualizar' #buena práctica colocar el PUT
delete 'usuarios/:id',          to: 'usuarios#eliminar'

#Restaurantes
get 'restaurantes/nuevo',       to: 'restaurantes#crear', as: 'nuevo_restaurante'

post 'restaurantes',            to: 'restaurantes#guardar'
end