module StaticPagesHelper
  def menu_is_current(str)
    if  controller.action_name == str
      'current-menu-item'
    end
  end
  def menu_is_current_team
    if controller.controller_name == 'teams' or
        controller.controller_name == 'registrations'
      'current-menu-item'
    end
  end
end
