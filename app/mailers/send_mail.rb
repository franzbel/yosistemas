require 'aescrypt'
class SendMail < ActionMailer::Base
	attr_accessor :url
      default from: 'YoSistemas@gmail.com'

    def activate_acount(user)
    @user = user
    #@url  = 'http://localhost:3000/usuarios/confirm?pass='+AESCrypt.encrypt(@user.id.to_s,"Taller")
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/usuarios/confirm/'+@user.id.to_s #AESCrypt.encrypt(@user.id.to_s,"Taller")
    mail(to: @user.correo, subject: 'YoSistemas')
  end

  def cambiar_correo(usuario,correo)
    @user = usuario
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/usuarios/comfirmar_cambio_correo/'+usuario.id.to_s+"/"+correo.to_s
    mail(to: correo, subject: 'YoSistemas')
  end

  def change_password(usuario)
    @user = usuario
    @url  = 'http://staging-yosistemas2014.herokuapp.com/usuarios/confirm_change_password/'+usuario.id.to_s
    #@url  = 'http://localhost:3000/usuarios/confirm_change_password/'+usuario.id.to_s
    mail(to: @user.correo, subject: 'YoSistemas')
  end

  def recover_password(user,id)
    @user=user
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/usuarios/password_recovered/'+@user.id.to_s+"/"+id.to_s
    #@url  = 'http://yosistemas.herokuapp.com/usuarios/confirm?pass='+@user.id.to_s #AESCrypt.encrypt(@user.id.to_s,"Taller")
    mail(to: @user.correo, subject: 'Password YoSistemas')
  end


  def notify_users_grupo(user,grupo_nombre)
    @user = user
    mail(to: @user.correo,subject: 'Te suscribiste a el grupo: '+grupo_nombre.to_s)
  end

  def notify_event_creation(user, evento, grupo)
    @user = user
    @evento = evento
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/eventos/'+@evento.id.to_s
    mail(to: @user.correo, subject: 'Evento creado requiere aprobación!')
  end


  def notify_theme_creation(user, tema, grupo)
    @user = user
    @tema = tema
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/temas/'+tema.id.to_s
    mail(to: @user.correo,subject: 'Tema creado requiere aprobación!')
  end

  def notify_users_tema(user, tema, grupo)
    @user = user
    @tema = tema
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/temas/'+tema.id.to_s
    mail(to: @user.correo,subject: 'Nuevo tema creado!')
  end

  def notify_task_creation(user, tarea, grupo)
    @user = user
    @tarea = tarea
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/tareas/'+@tarea.id.to_s
    mail(to: @user.correo, subject: 'Tarea creada requiere aprobación!')
  end

  def notify_users_task_create(user, tarea, grupo)
    @user = user
    @tarea = tarea
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/tareas/'+@tarea.id.to_s
    mail(to: @user.correo, subject: 'Nueva tarea creada! ')
  end

  def notify_users_event_create(user, evento, grupo)
    @user = user
    @evento = evento
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/eventos/'+@evento.id.to_s
    mail(to: @user.correo, subject: 'Nuevo evento creado! ')
  end

  def notify_user(usuario,usuario2)
    @user = usuario
    @user2 = usuario
    mail(to: @user.correo,subject: 'Te invito al grupo: ')
  end

  def enviar_invitaciones(usuario, destinatario, grupo)
    @usuario=usuario
    @grupo=grupo
    @direccion = Url.last.direccion
    #@url='http://localhost:3000/grupos/subscripcion_grupo/'+@grupo.id.to_s
    @url = 'http://'+@direccion+'/grupos/subscripcion_grupo/'+@grupo.id.to_s
    @direccion = @direccion + '/usuarios/new'
    mail(to: destinatario, subject: "Invitacion a grupo")
  end

  def notify_users_quest_update(user, cuestionario, grupo)
    @user = user
    @cuestionario = cuestionario
    @grupo = grupo
    direccion = Url.last.direccion
    @url  = 'http://'+direccion+'/cuestionarios/cuestionarios_de_grupo_index'+grupo.id.to_s
    mail(to: @user.correo, subject: 'Cuestionario editado! ')
  end

end
