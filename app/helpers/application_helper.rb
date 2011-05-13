module ApplicationHelper
  
  def current_controller?(controller)
    controller_name == controller
  end
end