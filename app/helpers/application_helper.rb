module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  def authenticate_user!(opts={})
    opts[:scope] = :user
    warden.authenticate!(opts) if !devise_controller? || opts.delete(:force)
  end

  def user_signed_in?
    !!current_user
  end

  def current_user
    @current_user ||= warden.authenticate(:scope => :user)
  end

  def user_session
    current_user && warden.session(:user)
  end
  def has_team?
    if user_signed_in?
      !current_user.team.nil?
    end
  end
end
